//
//  XMLCountryParser.swift
//  Countries
//
//  Created by Barra on 18/02/2020.
//  Copyright © 2020 Barra. All rights reserved.
//

import Foundation


class XMLCountryParser:NSObject, XMLParserDelegate {
    
    var name:String
    init(name:String) {
        self.name = name
    }
    
    // variables needed to parse
    var pName, pContinent, pCaptial, pLanguage, pImage, pImage1,pPopulation, pDemonym, pCurrency, pTimezone, pUrl:String!   // variables in which we store data
    var elementId: Int!
    var passData: Bool!
    var tags = ["name", "continent", "capital", "language", "image", "image1", "population", "demonym", "currency", "timezone", "url"]
    
    
    
    var countries = [Country]()   // empty array called Country
    var parser = XMLParser()
    
    // functions to override - 3 types
    // one that finds characters, one that finds starting tags, and one that finds end tags
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        // test elementId to save string into pVariables
        switch elementId {
            case  0: pName = string
            case  1: pContinent = string
            case  2: pCaptial = string
            case  3: pLanguage = string
            case  4: pImage = string
            case  5: pImage1 = string
            case  6: pPopulation = string
            case  7: pDemonym = string
            case  8: pCurrency = string
            case  9: pTimezone = string
            case  10: pUrl = string
        
            default: break
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        // if elementName is one of the tags, get its elementId
        if tags.contains(elementName) {
            // set the parsing data
            switch elementName {
                
                case "name"    : elementId = 0
                case "continent" : elementId = 1
                case "capital"   : elementId = 2
                case "language"   : elementId = 3
                case "image"   : elementId = 4
                case "image1"     : elementId = 5
                case "population"     : elementId = 6
                case "demonym"     : elementId = 7
                case "currency"     : elementId = 8
                case "timezone"     : elementId = 9
                case "url"     : elementId = 10
                default        : break
            }
            passData = true
        }
    }
    

    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        // reset the spy vars if in tags
        if tags.contains(elementName) {
            elementId = -1
            passData  = false
        }
        
        // if elementName is person
        if elementName == "country" {
       
            //let c = Country(name: pName, continent: pContinent, capital: pCaptial, language: pLanguage, image: pImage, image1: pImage1, url: pUrl)
            
            let c = Country(name: pName
                , continent: pContinent, capital: pCaptial, language: pLanguage, image: pImage, image1: pImage1, population: pPopulation, demonym: pDemonym, currency: pCurrency, timezone: pTimezone, url: pUrl)
            countries.append(c)
    }
   
    
}

func parsing(){
    // get the url for the file
    let bundleUrl = Bundle.main.bundleURL
    let fileUrl   = URL(fileURLWithPath: "countries.xml", relativeTo: bundleUrl)
    
    
    // make a parser
    parser = XMLParser(contentsOf: fileUrl)!
    
    // delegate it and parse it
    parser.delegate = self
    parser.parse()
    
    }
    
    // instead of tags, use your own tags

}
