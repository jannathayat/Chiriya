//
//  ViewController.swift
//  Chiriya
//
//  Created by Jannat Hayat on 9/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var allTweets: [AppData] = [
        AppData(userName: "Elon Musk", tweet: "New car releasing soon and please buy more dogecoins #MOOON!!!!", image: UIImage(named: "elon")!),
        AppData(userName: "Donald Trump", tweet: "Im running for President of US in 2024 #Trump2024", image: UIImage(named: "trump")!),
        AppData(userName: "Imran Khan", tweet: "PM of Pakistan is a corrupt criminal. #GanjaChorHai", image: UIImage(named: "imran")!),
        AppData(userName: "Babar Azam", tweet: "InshAllah Pakistan will win the cricket world cup. #WCT20", image: UIImage(named: "imran")!),
        AppData(userName: "Nawaz Shareef", tweet: "Mujhe kiyu nikala???? #London", image: UIImage(named: "nawaz")!),
        AppData(userName: "Narendra Modi", tweet: "I request all Hindus to join me and lets remove Pakistan from world", image: UIImage(named: "modi")!),
        AppData(userName: "Aaron Rogers", tweet: "Let's kick some bears a$$. #GoPackers #GreenBay", image: UIImage(named: "aaron")!),
        AppData(userName: "Derrick Rose", tweet: "I've torn my ACL again, wont be able to play this season. #NBA", image: UIImage(named: "derrick")!),
        AppData(userName: "Vladamir Putin", tweet: "Im going to own entire Europe one day. Ukraine is almost finished!", image: UIImage(named: "putin")!),
        AppData(userName: "Saram Hayat", tweet: "Lets go Cowboys, lets get this Superbowl this year!! #NFL", image: UIImage(named: "saram")!)
    ]
    
      
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        profileImage.image = UIImage(named: "jannatProfile")
        profileImage.layer.cornerRadius = 25
        textField.placeholder = "what's on your mind"
    }

    
    @IBAction func enterButton(_ sender: UIButton) {
        let post = textField.text!
        let image = UIImage(named: "jannatProfile")
        let newPost = AppData(userName: "Jannat Hayat", tweet: post, image: image!)
        allTweets.append(newPost)
        
        tableView.reloadData()
        //this will allow us to reload data and show what we are posting
    }

}

