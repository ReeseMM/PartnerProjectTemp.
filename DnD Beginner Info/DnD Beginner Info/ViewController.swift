//
//  ViewController.swift
//  DnD Beginner Info
//
//  Created by Reese Hemery on 10/24/19.
//  Copyright © 2019 Reese Hemery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var identifier = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonSelected(_ sender: UIButton)
    {
    if sender.titleLabel?.text == "What Are Rolls?"
        {

        identifier = 3
        performSegue(withIdentifier: "Label+Image", sender: self)
                
        }
            
    if sender.titleLabel?.text == "What Does It Mean To DM?"
        {
            
        identifier = 4
        performSegue(withIdentifier: "Label+Image", sender: self)
        }
            
    if sender.titleLabel?.text == "Creating A World?"
        {
            
        identifier = 5
        performSegue(withIdentifier: "Label+Image", sender: self)
        }
        
        if sender.titleLabel?.text == "Creating A Story?"
        {
            
        identifier = 6
        performSegue(withIdentifier: "Label+Image", sender: self)
        }
        
        if sender.titleLabel?.text == "Encounter Ballence?"
        {
            
        identifier = 7
        performSegue(withIdentifier: "Label+Image", sender: self)
        }
        
        if sender.titleLabel?.text == "Where Can I Find A DnD Group?"
        {
            
        identifier = 8
        performSegue(withIdentifier: "Label+Image", sender: self)
        }
        
        if sender.titleLabel?.text == "Roleplay?"
        {
            
        identifier = 9
        performSegue(withIdentifier: "Label+Image", sender: self)
        }
        
        if sender.titleLabel?.text == "What Is Dugons and Dragons?"
        {
            
        identifier = 0
        performSegue(withIdentifier: "Label+Image", sender: self)
        }
        
        if sender.titleLabel?.text == "How Do I Get Started?"
        {
            
        identifier = 1
        performSegue(withIdentifier: "Label+Image", sender: self)
        }
        
        if sender.titleLabel?.text == "What Is The Difference Between Additions?"
        {
            
        identifier = 2
        performSegue(withIdentifier: "Label+Image", sender: self)
        }
        
        if sender.titleLabel?.text == "Interaction?"
        {
            
        identifier = 2
        performSegue(withIdentifier: "Indirect", sender: self)
        }
        
        if sender.titleLabel?.text == "Fighting?"
        {
            
        identifier = 3
        performSegue(withIdentifier: "Indirect", sender: self)
        }
        
        if sender.titleLabel?.text == "Charicter Creation?"
        {
        identifier = 1
        performSegue(withIdentifier: "Indirect", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        if segue.identifier == "Label+Image"
        {
            let newvc = segue.destination as! ViewControllerD
            newvc.Description = identifier
        }
        if segue.identifier == "Indirect"
        {
            let newvc = segue.destination as! ViewControllerBranch
            newvc.Branch = identifier - 1
        }
    }
    
}

