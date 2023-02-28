//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var bmi = Float(0.0)
    var calculatorManager = CalculatorManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculatorManager.getBMIValue()
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        
        weightLabel.text = "\(String(Int(sender.value)))kg"
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
       
        calculatorManager.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.BMIValue = calculatorManager.getBMIValue()
            destinationVC.advice = calculatorManager.getAdvice()
            destinationVC.color = calculatorManager.getColor()
        }
    }
}

