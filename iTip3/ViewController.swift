//
//  ViewController.swift
//  iTip3
//
//  Created by Jianyi Gao 高健一 on 12/4/16.
//  Copyright © 2016 Jianyi Gao 高健一. All rights reserved.
//

import UIKit
import Foundation

class GlobalVariables : NSObject{
    var currencyText = "$"
    var defaultTipPercentage = 1;
}
var global = GlobalVariables()

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipChoice: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var numStepper: UIStepper!
    
    @IBOutlet weak var split2Label: UILabel!
    @IBOutlet weak var split3Label: UILabel!
    @IBOutlet weak var split4Label: UILabel!
    @IBOutlet weak var splitNumLabel: UILabel!
    
    
    @IBOutlet var currencyLabels: [UILabel]!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        for label in self.currencyLabels{
            label.text = global.currencyText
        }
        tipChoice.selectedSegmentIndex = global.defaultTipPercentage;
    }
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func stepperTapped(sender: UIStepper) {
        self.numLabel.text = String(format: "%.0f", self.numStepper.value)
    }
   

      @IBAction func calculateTip(sender: UITextField) {
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        
        // If if is a valid number, using this value; otherwise, return 0
        let tip = bill * tipPercentages[tipChoice.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        splitNumLabel.text = String(format: "%.2f", total / numStepper.value)
        split2Label.text = String(format: "%.2f", total / 2)
        split3Label.text = String(format: "%.2f", total / 3)
        split4Label.text = String(format: "%.2f", total / 4)
        
    }
    
    @IBAction func roundUpTapped(sender: UIButton) {
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipChoice.selectedSegmentIndex]
        let total = ceil(bill + tip)
        
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        splitNumLabel.text = String(format: "%.2f", ceil(total / numStepper.value))
        split2Label.text = String(format: "%.2f", ceil(total / 2))
        split3Label.text = String(format: "%.2f", ceil(total / 3))
        split4Label.text = String(format: "%.2f", ceil(total / 4))
    }
    
    @IBAction func roundDownTapped(sender: UIButton) {
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipChoice.selectedSegmentIndex]
        let total = floor(bill + tip)
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        splitNumLabel.text = String(format: "%.2f", floor(total / numStepper.value))
        split2Label.text = String(format: "%.2f", floor(total / 2))
        split3Label.text = String(format: "%.2f", floor(total / 3))
        split4Label.text = String(format: "%.2f", floor(total / 4))
        
    }
    
    @IBAction func defaultTapped(sender: UIButton) {
        let tipPercentages = [0.15, 0.18, 0.2]        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipChoice.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        splitNumLabel.text = String(format: "%.2f", total / numStepper.value)
        split2Label.text = String(format: "%.2f", total / 2)
        split3Label.text = String(format: "%.2f", total / 3)
        split4Label.text = String(format: "%.2f", total / 4)
    }
    
    
}




