//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    // Our strings
    let story1 = "11111111111111"
    let answer1a = "1111111111111aaaaaaaa!"
    let answer1b = "1111111111111bbbbbbbb"
    
    
    let story2 = "22222222222"
    let answer2a = "22222222222aaaaaaa"
    let answer2b = "22222222222bbbbbbb"
    
    let story3 = "3333333333333"
    let answer3a = "3333333333333aaaaaaaaaa"
    let answer3b = "3333333333333bbbbbbbbbb"
    
    let story4 = "44444444444444"
    let answer4a = "44444444444444aaaaaaaa"
    let answer4b = "44444444444444bbbbbbbbbb"
    
    let story5 = "55555555555555"
    let answer5a = "55555555555555aaaaaaaa"
    let answer5b = "55555555555555bbbbbbbb"
    
    let story6 = "6666666666666666"
    let answer6a = "6666666666666666aaaaa"
    let answer6b = "66666666666666bbbbbb"
    
     let story7 = "7777777777"
     let story8 = "88888888888"
     let story9 = "99999999"
     let story10 = "1010101010"
     let story11 = "11111111111eleven"
     let story12 = "1212121212121212212"
    
    
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    var storyIndex = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTextView.text = story1
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
       topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        
        restartButton.isHidden = true
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1 && storyIndex == 1{
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
        } else if sender.tag == 2 && storyIndex == 1{
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
    
        }        // TODO Step 4: Write an IF-Statement to update the views
//        if ( sender.tag == 1 ) && ( storyIndex == 1 || storyIndex == 2){
//            storyTextView.text = story3
//            topButton.setTitle(answer3a, for: .normal)
//            bottomButton.setTitle(answer3b, for: .normal)
//            storyIndex = 3
//        }else if ( sender.tag == 2 && storyIndex == 1){
//            storyTextView.text = story2
//            topButton.setTitle(answer2a, for: .normal)
//            bottomButton.setTitle(answer2b, for: .normal)
//            storyIndex = 2
//        } else if sender.tag == 1 && storyIndex == 3 {
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
        } else if sender.tag == 2 && storyIndex == 3 {
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
        } else if sender.tag == 2 && storyIndex == 2 {
            storyTextView.text = story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
        
        }
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6 {
            restartButton.isHidden = false
        }
        // TODO Step 6: Modify the IF-Statement to complete the story
        
        }
    
    @IBAction func restartPressed(_ sender: Any) {
        restart()
    }
    
    func restart () {
        storyIndex = 1
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        topButton.isHidden = false
        bottomButton.isHidden = false
        
    }
}

