//
//  CountriesTableTableViewController.swift
//  Assignment1
//
//  Created by Barra on 19/02/2020.
//  Copyright © 2020 Barra. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {
    
    
    
    var data:Countries!
    let cellSpacingHeight: CGFloat = 10


    override func viewDidLoad() {
        super.viewDidLoad()
        
        data = Countries(fromXML: "countries.xml")

    }



    override func numberOfSections(in tableView: UITableView) -> Int {

        data.getCount()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // SPACING BETWEEN SECTIONS
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        

        // CELL CONFIG
        let country = data.getCountry(index: indexPath.section)
        
        cell.textLabel?.text = country.name
        cell.detailTextLabel?.text = country.continent
        cell.imageView?.image = UIImage(named: country.image)
        
        
        
        
        // STYLING
        
        cell.layer.cornerRadius = 15
        cell.clipsToBounds = true

        return cell
    }
    

  

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let vc = segue.destination as! CountryViewController
        
        
        let indexPath = tableView.indexPath(for: sender as! UITableViewCell)
        
        let country = data.getCountry(index: (indexPath?.section)!)
        
        // Pass the selected object to the new view controller.
        vc.countryData = country
    }


}
