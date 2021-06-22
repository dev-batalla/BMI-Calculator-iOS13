//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Jay Batalla on 6/21/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func updateUI() {
        bmiLabel.text = bmiValue
        view.backgroundColor = color
        adviceLabel.text = advice
    }
}
