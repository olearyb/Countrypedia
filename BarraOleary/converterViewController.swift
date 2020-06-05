//
//  converterViewController.swift
//  Assignment1
//
//  Created by Barra on 25/02/2020.
//  Copyright © 2020 Barra. All rights reserved.
//

import UIKit

class converterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var countryData : Country!
    
    
    var activeCurrency:Double = 0;
    
    var myCurrency:[String] = ["EUR","GBP","AUD","USD", "ZAR", "BRL", "MAD", "CNY", "JPY", "CAD", "MXN", "AED", "HKD"]
    var myValues:[Double] = [1.00, 0.86, 1.69, 1.10, 17.72, 4.95, 10.57, 7.68, 118.60, 1.48, 21.74, 4.03, 8.56]
    
    
    // OUTLETS
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var output: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
  
    
    
    // CONVERT ACTION
    @IBAction func convertAction(_ sender: Any) {
        if (input.text != "") {
        output.text = String(Double(input.text!)! * activeCurrency)
        }
    }
    

    // OUTLET FOR STYLING
    @IBOutlet weak var convertButtonStyling: UIButton!
    
    
    
    
    
    // CREATING PICKER VIEW
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myCurrency.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myCurrency[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        activeCurrency = myValues[row]
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // INFO LABEL STYLING
        infoLabel.layer.cornerRadius = infoLabel.frame.size.height/8
        infoLabel.layer.masksToBounds = true
        
        
     
        
        
        // OUTPUT STYLING
        output.layer.cornerRadius = output.frame.size.height/2
        output.layer.masksToBounds = true
        
        
        // CONVERT BUTTON STYLING
        convertButtonStyling.layer.cornerRadius = convertButtonStyling.frame.size.height/8
        convertButtonStyling.layer.masksToBounds = true
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         let vc = segue.destination as! WebViewController

         // Pass the selected object to the new view controller.
         vc.urlString = countryData.url
     }

}
