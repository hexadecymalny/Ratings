//
//  PlayersTableViewController.swift
//  Ratings
//
//  Created by hexadecymalny on 23/07/15.
//  Copyright © 2015 hexadecymalny. All rights reserved.
//

import UIKit

class PlayersTableViewController: UITableViewController {

    var players: [Player] = playersData
    
    @IBAction func cancelToPlayersViewController(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func savePlayerDetails(segue: UIStoryboardSegue) {
        if let playerDetailsTableViewController = segue.sourceViewController as? PlayerDetailsTableViewController {
            players.append(playerDetailsTableViewController.player)
        }
        
        //update the tableView
        let indexPath = NSIndexPath(forRow: players.count - 1, inSection: 0)
        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! PlayerCellTableViewCell
        let player = players[indexPath.row]
        
        cell.nameLabel.text = player.name
        cell.gameLabel.text = player.game
        cell.ratingImageView.image = self.imageForRating(rating: player.rating)

        return cell
    }
    
    func imageForRating(rating rating: Int) -> UIImage? {
        return RateImage.StarSmall.setRateImage(rating: rating)
    }

}
