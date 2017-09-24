//
//  CurrencyTxtField.swift
//  Window Shopper
//
//  Created by AbdelRahman Aref on 9/23/17.
//  Copyright © 2017 AbdelRahman Aref. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20 // default is double and we can draw with float only
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7343331173, green: 0.7343331173, blue: 0.7343331173, alpha: 0.8374892979)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current //according to your location, the currency show
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        //properties of the textfield,, bg, corner radius, txt alignment and placeholder and color
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25) //color literal
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            //foregroundColor for the placeholder text color, we can also make the text underlined or strike through or other attributes using NSAttributedString
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            //this is a property of UITextField "attributedPlaceholder" which will override the placeholder value
            attributedPlaceholder = place
            //color of the text when we start writing in it
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
