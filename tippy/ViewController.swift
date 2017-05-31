//
//  ViewController.swift
//  tippy
//
//  Created by Phung Duc Chinh on 28/05/2017.
//  Copyright © 2017 Phung Duc Chinh. All rights reserved.
//

import UIKit

var tip: Double = 80
var store: String = ""
var staff: String = ""
var customer: String = ""
var bill: Double = 0
var tipPercentages = [18, 20, 25]

class ViewController: UIViewController {

    @IBOutlet weak var txtStore: UITextField!
    @IBOutlet weak var txtCustomer: UITextField!
    @IBOutlet weak var txtStaff: UITextField!
    @IBOutlet weak var txtBill: UITextField!
    @IBOutlet weak var txtTip: UISegmentedControl!
    var viewctl: PrintViewController = PrintViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func tapStore(_ sender: Any) {
        store = txtStore.text!
    }
    
    @IBAction func tapStaff(_ sender: Any) {
        staff = txtStaff.text!
    }
    
    @IBAction func tapCustomer(_ sender: Any) {
        customer = txtCustomer.text!
    }
    
    @IBAction func tapBill(_ sender: Any) {
        bill = Double(txtBill.text!) ?? 0
    }
   
    @IBAction func tapTip(_ sender: Any) {
        tip = Double(tipPercentages[txtTip.selectedSegmentIndex])
    }
    
    @IBAction func tapNext(_ sender: Any) {
        store += txtStore.text!
        customer += txtCustomer.text!
        staff += txtStaff.text!
        bill = Double(txtBill.text!) ?? 0
    }
}

