//
//  CountryViewController.swift
//  Assignment1
//
//  Created by Barra on 19/02/2020.
//  Copyright © 2020 Barra. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController {
    
    
    var countryData: Country!
    
    
    let backgroundImageVIew = UIImageView()
    
    // outlets
    
    @IBOutlet weak var mapLogo: UIImageView!
    @IBOutlet weak var CountryImageView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    
    //button for styling
    @IBOutlet weak var buttonDetailStyling: UIButton!
    
    
    //  actions
    @IBAction func detalAction(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // POPULATE THE VIEW
        countryLabel.text = countryData.name
        CountryImageView.image = UIImage(named: countryData.image1)
        
        mapLogo.image = UIImage(named: "MapLogo2_SelectMeScheme")
        
        // CIRCULAR BORDER ON IMAGE
        CountryImageView.layer.borderColor = Colors.verdiGris.cgColor
        CountryImageView.layer.cornerRadius = CountryImageView.frame.size.height/2
        CountryImageView.layer.borderWidth = 5.0
        CountryImageView.contentMode = .scaleAspectFill
        
        
        
        
        // BUTTON STYLING
        buttonDetailStyling.layer.cornerRadius = buttonDetailStyling.frame.size.height/2
        buttonDetailStyling.layer.masksToBounds = true
        //buttonDetailStyling.tintColor = UIColor.white
        
        
            // GRADIENT STYLING
    buttonDetailStyling.setGradientBackground(colorOne: Colors.regaliaLight, colorTwo: Colors.regaliaPurple)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as! DetailedViewController2
        
        // Pass the selected object to the new view controller.
        vc.countryData = self.countryData
        
    }
    /*
    func setBackground() {
        view.addSubview(backgroundImageVIew)
        backgroundImageVIew.translatesAutoresizingMaskIntoConstraints = false  // we are going to use auto layouts
        
        //backgroundImageVIew.topAnchor.constraint(equalTo: view.topAnchor).isActive = true // pinned top of image to top of view
        //backgroundImageVIew.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true // pinned top of image to top of view
         //backgroundImageVIew.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true // pinned left side of the image to right of view
         //backgroundImageVIew.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true // pinned right side of image to left of view
        
        backgroundImageVIew.image = UIImage(named: "MapLogo.png")
    }
 */
    

}
