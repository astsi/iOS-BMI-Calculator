//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Aleksa Novcic on 23.2.22..
//  Copyright © 2022 Angela Yu. All rights reserved.
//

//adding a Demo UIViewController programatically - a more complex solution, we won't use it in our project

import UIKit

class DemoViewController : UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        let label = UILabel()
        label.text = bmiValue
        label.frame  = CGRect(x:0, y:0, width: 100, height: 150)
        view.addSubview(label)
        
    }
}
