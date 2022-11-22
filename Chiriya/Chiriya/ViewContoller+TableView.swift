//
//  ViewContoller+TableView.swift
//  Chiriya
//
//  Created by Jannat Hayat on 9/24/22.
//

import UIKit
// this will allow us to extend out code and make it more organized

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index: Int = indexPath.row
        
        let currentTweet: AppData = allTweets[index]
        
        let names: String = currentTweet.userName
        let tweeting:String = currentTweet.tweet
        let picture = currentTweet.image
        
        
        let Tweets = tableView.dequeueReusableCell(withIdentifier: "Tweets") as! Tweets
        Tweets.profileImage.image = picture
        Tweets.tweetLabel.text = tweeting
        Tweets.nameOfUser.text = names
        return Tweets
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
