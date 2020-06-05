//
//  Country.swift
//  Countries
//
//  Created by Barra on 18/02/2020.
//  Copyright © 2020 Barra. All rights reserved.
//


class Country {
    
    var name:String
    var continent:String
    var capital:String
    var language:String
    var image:String
    var image1:String
    var population:String
    var demonym:String
    var currency:String
    var timezone:String
    var url:String
    
    
    
    init(name:String, continent:String, capital:String, language:String, image:String, image1:String, population:String, demonym:String, currency:String, timezone:String, url:String) {
        
        self.name = name
        self.continent = continent
        self.capital = capital
        self.language = language
        self.image = image
        self.image1 = image1
        self.population = population
        self.demonym = demonym
        self.currency = currency
        self.timezone = timezone
        self.url = url
    }

}



