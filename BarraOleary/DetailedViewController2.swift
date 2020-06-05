//
//  DetailedViewController2.swift
//  Assignment1
//
//  Created by Barra on 22/02/2020.
//  Copyright © 2020 Barra. All rights reserved.
//

import UIKit

class DetailedViewController2: UIViewController {
    
    var countryData : Country!
    
    
    // OUTLETS
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var continentLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var langLabel: UILabel!
    @IBOutlet weak var popLabel: UILabel!
    @IBOutlet weak var demLabel: UILabel!
    @IBOutlet weak var currLabel: UILabel!
    @IBOutlet weak var timezLabel: UILabel!
    
    
    // OUTLET FOR STYLING
    @IBOutlet weak var wikiButtonStyle: UIButton!
   
    // ACTIONS
    @IBAction func wikiAction(_ sender: Any) {
    }
    @IBAction func convertAction(_ sender: Any) {
    }
    

    
    @IBOutlet weak var pulseTest2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // CONVERTER ANIMATION
        pulseTest2.pulsate()
        
        // CONVERTER STYLING
        pulseTest2.layer.cornerRadius = pulseTest2.frame.size.height/2
        
        // POPULATE THE DATA
        nameLabel.text = countryData.name
        continentLabel.text = countryData.continent
        capitalLabel.text = countryData.capital
        langLabel.text = countryData.language
        popLabel.text = countryData.population
        demLabel.text = countryData.demonym
        currLabel.text = countryData.currency
        timezLabel.text = countryData.timezone

        
        // WIKIBUTTON STYLING
        wikiButtonStyle.layer.cornerRadius = wikiButtonStyle.frame.size.height/2
        wikiButtonStyle.layer.masksToBounds = true
        
            // GRADIENT
        wikiButtonStyle.setGradientBackground(colorOne: Colors.regaliaLight, colorTwo: Colors.regaliaPurple)
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "test1" {
            let vc = segue.destination as! WebViewController
            vc.urlString = countryData.url
        }
            else {

            let vc = segue.destination as! converterViewController
            }
    }
}
