//
//  PlayerDetailsTableViewController.swift
//  Ratings
//
//  Created by hexadecymalny on 27/07/15.
//  Copyright © 2015 hexadecymalny. All rights reserved.
//

import UIKit

class PlayerDetailsTableViewController: UITableViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    var player: Player!
    var game: String = "Chess"
    
    
    required init(coder aDecoder: NSCoder) {
        print("init PlayerDetailsTableViewController")
        super.init(coder: aDecoder)
    }
    
    deinit {
        print("deinti PlayerDetailsTableViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = game
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Table view data source
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            if let playerName = nameTextField.text {
                player = Player(name: playerName, game: game, rating: 1)
            }
        }
        
        if segue.identifier == "PickGame" {
            if let gamePickerViewController = segue.destinationViewController as? GamePckerTableViewController {
                gamePickerViewController.selectedGame = game
            }
        }
    }
    
    @IBAction func selectedGame(seuge: UIStoryboardSegue) {
        if let gamePickerViewController = seuge.sourceViewController as? GamePckerTableViewController, selectedGame = gamePickerViewController.selectedGame {
            detailLabel.text = selectedGame
            game = selectedGame
        }
    }
}
