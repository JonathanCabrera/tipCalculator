//
//  ViewController.swift
//  ProjectTipCaclucator
//
//  Created by Jonathan Cabrera on 9/12/20.
//  Copyright © 2020 Jonathan Cabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBAction func OnTap(_ sender: Any) {
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip;
        tipPercentageLabel.text = String(format: "$%.2f", total)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

