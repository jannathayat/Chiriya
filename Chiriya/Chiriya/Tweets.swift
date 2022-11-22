//
//  Tweets.swift
//  Chiriya
//
//  Created by Jannat Hayat on 9/22/22.
//

import UIKit
class Tweets: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameOfUser: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!

    var retweetButton = 1
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.layer.cornerRadius = 25
        tweetLabel.numberOfLines = 3
    }
    
    @IBOutlet weak var clickTheButton: UIButton!
    
    
    @IBAction func likeButton(_ sender: UIButton) {
        if clickTheButton.tag == 0 {
            clickTheButton.setImage(UIImage(systemName: "heart"), for: .normal)
            clickTheButton.tag = 1
        } else {
            clickTheButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            clickTheButton.tag = 0
        }
    }
    

    @IBAction func retweetButton(_ sender: UIButton) {
        var tag = sender.tag
        if tag % 2 == 0 {
            sender.tintColor = .darkGray
        } else {
            sender.tintColor = .green
        }
        tag += 1
    }
}
            
