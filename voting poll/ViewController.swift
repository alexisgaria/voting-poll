//
//  ViewController.swift
//  voting poll
//
//  Created by Alexis Garia on 3/26/20.
//  Copyright © 2020 Alexis Garia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var upVoteCounter: UILabel!
    @IBOutlet weak var downVoteCounter: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool){
    
        upVoteCounter.text = String((parent as! TBViewController).yesVote)
         downVoteCounter.text = String((parent as! TBViewController).noVote)
        
        
        if (parent as! TBViewController).yesVote > (parent as! TBViewController).noVote
        
        {
            winner.text = "Agree!"
        } else{
            winner.text = "Disagree!"
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //do not load counts here
        //this only loads once and not everytime we view
        
        // Do any additional setup after loading the view.
    }


}

