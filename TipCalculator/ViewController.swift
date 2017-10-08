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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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


    @IBAction func helloWorld(sender: AnyObject) {
        print("Hello World! The app works.")
    }
    
    @IBAction func billAmountEntered(sender: AnyObject) {
        print("Bill amount entered.")
    }
}

