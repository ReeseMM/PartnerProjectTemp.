//
//  ViewControllerBranch.swift
//  DnD Beginner Info
//
//  Created by Reese Hemery on 10/28/19.
//  Copyright © 2019 Reese Hemery. All rights reserved.
//

import UIKit

class ViewControllerBranch: UIViewController {

    @IBOutlet weak var BranchLabel: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    
    var Branch = 0
    
    let D1 = ["1one", "two", "three", "four", "five", "six"]
    let D2 = ["2one", "two", "three", "four", "five", "six"]
    let D3 = ["3one", "two", "three", "four", "five", "six"]
    let D4 = ["4one", "two", "three", "four", "five", "six"]
    let D5 = ["5one", "two", "three", "four", "five", "six"]
    let D6 = ["6one", "two", "three", "four", "five", "six"]
    override func viewDidLoad() {
        super.viewDidLoad()

       ButtonSetSelect(Description1: "\(D1[Branch])", Description2: "\(D2[Branch])", Description3: "\(D3[Branch])", Description4: "\(D4[Branch])", Description5: "\(D5[Branch])", Description6: "\(D6[Branch])")
        
    }


    func ButtonSetSelect(Description1: String, Description2: String, Description3: String, Description4: String, Description5: String, Description6: String)
    {
        print(1)
        Button1.setTitle("\(Description1)", for: .normal)
        Button2.setTitle("\(Description2)", for: .normal)
        Button3.setTitle("\(Description3)", for: .normal)
        Button4.setTitle("\(Description4)", for: .normal)
        Button5.setTitle("\(Description5)", for: .normal)
        Button6.setTitle("\(Description6)", for: .normal)
    }

}

// ["potatoes", "popcorn", "carrots", "hummus", "chips"]
