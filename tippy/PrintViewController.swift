//
//  PrintViewController.swift
//  tippy
//
//  Created by phungducchinh on 5/30/17.
//  Copyright © 2017 Phung Duc Chinh. All rights reserved.
//

import UIKit

class PrintViewController: UIViewController {

    @IBOutlet weak var txtSlide: UISlider!
    @IBOutlet weak var lbTip: UILabel!
    
    @IBOutlet weak var lbShow: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtSlide.isContinuous = true
        txtSlide.value = Float(tip)
        lbTip.text = String(format: "$%.2f", tip)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slideTip(_ sender: Any) {
        
        tip = Double(txtSlide.value)
        lbTip.text = String(format: "$%.2f", tip)
    }

    @IBAction func btnShow(_ sender: Any) {
        lbShow.text = "Store: \(store) \nCustomer: \(customer) \n Bill: \(bill) \nTip rate: \(String(format: "$%.2f", tip))  \nTotal: \(String(format: "$%.2f", (bill + bill*tip/100))) \nStaff: \(staff) \nThank You and See You Soon!"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
