//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightNumber: UILabel!
    @IBOutlet weak var weightNumber: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmi = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightNumber.text = String(format: "%.1f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightNumber.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        
        calculatorBrain.calculateBMI(weight, height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC      = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice   = calculatorBrain.getAdvice()
            destinationVC.color    = calculatorBrain.getColor()
        }
    }
}

