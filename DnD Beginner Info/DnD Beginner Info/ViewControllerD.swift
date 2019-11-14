//
//  ViewControllerD.swift
//  DnD Beginner Info
//
//  Created by Reese Hemery on 10/28/19.
//  Copyright © 2019 Reese Hemery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerD: UIViewController {

    @IBOutlet weak var DesctiptionImage: UIImageView!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var DescriptionTitle: UILabel!
    
    var loop = 0
    var Description = 500
    let Descriptions = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    let Title = ["What Is Dugons and Dragons?", "How Do I Get Started?", "What Is The Difference Between Additions?", "What Are Rolls?", "What Does It Mean To DM?", "Creating A World?", "Creating A Story?", "Encounter Ballence?", "Where Can I Find A DnD Group?", "Roleplay?"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        DictateDescription(Value: 0, description: Descriptions[0], title: Title[0], Image: 0, Loop: loop)
        
        
    }

    func DictateDescription(Value: Int, description: String, title: String, Image: Int, Loop: Int)
    {
        if Description == Value
        {
            DescriptionTitle.text = title
            DescriptionLabel.text = description
            DesctiptionImage.image = UIImage(named: "\(Image)")
            
            let utterance = AVSpeechUtterance(string: description)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            
            let synth = AVSpeechSynthesizer()
            synth.speak(utterance)
            loop = 0
        }
        else
        {
            loop = loop + 1
            DictateDescription(Value: loop, description: Descriptions[loop], title: Title[loop], Image: loop, Loop: loop)
        }
        
    }
    
//    func alert(title:String)
//    {
//        let Lose = UIAlertController(title: title, message: "Go again", preferredStyle: .alert)
//        let something = UIAlertAction(title: "Ok", style: .destructive, handler: nil)
//        Lose.addAction(something)
//        present(Lose, animated: true, completion: nil)
//    }
}
