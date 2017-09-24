//
//  ViewController.swift
//  Window Shopper
//
//  Created by AbdelRahman Aref on 9/23/17.
//  Copyright © 2017 AbdelRahman Aref. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let calcuBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcuBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calcuBtn.setTitle("Calculate", for: .normal)
        calcuBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal) //not the pressed or highlighted state
        calcuBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcuBtn
        priceTxt.inputAccessoryView = calcuBtn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    //for selector of addTarget method use @objc to know that this is objective-c feature
    @objc func calculate() {
        print("we are here")
        
        //local scope so this wageTxt here is not the same as the global one above
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            //prevent text from making calc, only numbers
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    
}

