//
//  ViewController.swift
//  TipCalculator
//
//  Created by Linus Okoth on 7/31/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello world")
        
        
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get the bill
        let bill = Double(billField.text!) ?? 0
        
        //Calculate the bill total
        let tipPerecentages = [0.15, 0.18, 0.2]
        
        let tip  = bill * tipPerecentages[tipcontrol.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

