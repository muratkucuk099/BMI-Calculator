//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Mac on 27.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var backgroundColor: UIImageView!
    var BMIValue = "0.0"
    var advice = "Try Again!"
    var color : UIColor = .white
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = BMIValue
        adviceLabel.text = advice
        backgroundColor.backgroundColor = color
    }
    
    @IBAction func recalculatePress(_ sender: UIButton) {
     
        self.dismiss(animated: true)
    }
    
  

}
