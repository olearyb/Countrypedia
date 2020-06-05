//
//  Countries.swift
//  Countries
//
//  Created by Barra on 18/02/2020.
//  Copyright © 2020 Barra. All rights reserved.
//

import Foundation

class Countries {
    
    var data : [Country]!
    
    init(fromXML:String) {
        // make an xml people parser
        let parser = XMLCountryParser(name: fromXML)
                
                // parsing
        parser.parsing()
                
                //initialise data
        data = parser.countries
    }
            
    func getCount() -> Int{return self.data.count}
    func getCountry(index:Int) -> Country {return self.data[index]}
            
}
    

