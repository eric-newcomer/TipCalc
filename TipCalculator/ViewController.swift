//
//  ViewController.swift
//  TipCalculator
//
//  Created by liblabs-mac on 10/8/17.
//  Copyright © 2017 Eric Newcomer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var totalBillAmount: UILabel!
    @IBOutlet var initialBillAmount: UITextField!
    @IBOutlet var actualTipAmount: UILabel!
	@IBOutlet var tipIndex: UISegmentedControl!
	
	let tipVals = [0.10, 0.15, 0.20]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		
        actualTipAmount.text = "Bill amount not entered"
		totalBillAmount.text = "Bill amount not entered"
		
        let keyboardDismiss = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        self.view.addGestureRecognizer(keyboardDismiss)
    }
    
    @objc func dismissKeyboard() {
        print("dismissing keyboard")
        initialBillAmount.endEditing(true)

    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateTipValue(sender: AnyObject) {
        print("tip percent changed")
        let bill = Double(initialBillAmount.text!) ?? 0
        let tip = bill * tipVals[tipIndex.selectedSegmentIndex]
        actualTipAmount.text = String(format: "$%.2f", tip)
        totalBillAmount.text = String(format: "$%.2f", tip + bill)
    }
    
    @IBAction func billAmount(sender: AnyObject) {
        print("Bill amount entered.")
        let bill = Double(initialBillAmount.text!) ?? 0
        let tip = bill * tipVals[tipIndex.selectedSegmentIndex]
        actualTipAmount.text = String(format: "$%.2f", tip)
        totalBillAmount.text = String(format: "$%.2f", tip + bill)
    }

    @IBAction func helloWorld(sender: AnyObject) {
        print("Hello World! The app works.")
    }
    
}

