//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Candice Reese on 10/16/16.
//  Copyright © 2016 Kevin Reese. All rights reserved.
//

import UIKit

class RockPapSciViewController: UIViewController
{
    
    
    
    @IBAction private func playRock(sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultsViewController
        
        vc.userChoice = getUserChoice(sender: sender)
        
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction private func playPaper(sender: UIButton)
    {
        performSegue(withIdentifier: "play", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "play"
        {
            let vc = segue.destination as! ResultsViewController
            
            vc.userChoice = getUserChoice(sender: sender as! UIButton)
            
        }
    }
    
    private func getUserChoice(sender: UIButton) -> Shape
    {
        let shape = sender.title(for: .normal)
        
        return Shape(rawValue: shape!)!
        
    }

}

