//
//  ViewController.swift
//  Salestax
//
//  Created by Jishnu Boppana on 11/17/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    @IBOutlet weak var totalPriceLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = ""
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLbl.text = "$\(totalPrice)"
    }
    
}

