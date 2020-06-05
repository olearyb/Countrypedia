//
//  StartPageViewController.swift
//  Assignment1
//
//  Created by Barra on 22/02/2020.
//  Copyright © 2020 Barra. All rights reserved.
//

import UIKit

class StartPageViewController: UIViewController {
    
    // OUTLETS and ACTIONS
    @IBOutlet weak var beginButtonStyle: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // BUTTON STYLING
        beginButtonStyle.layer.cornerRadius = beginButtonStyle.frame.size.height/2
        beginButtonStyle.layer.masksToBounds = true
                
        
        // BUTTON GRADIENT
        beginButtonStyle.setGradientBackground(colorOne: Colors.regaliaLight, colorTwo: Colors.regaliaPurple)
        
    }
}
