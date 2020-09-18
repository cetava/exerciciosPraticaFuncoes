//
//  AirPlane.swift
//  Exercicio01SearchBar
//
//  Created by Cesar A. Tavares on 9/18/20.
//

import Foundation

class AirPlane {
    var model: String
    var city: String
    
    init(model: String, city:String) {
        self.model = model
        self.city = city
    }
}

extension AirPlane: ProtocolSearch {
    func getItems() -> String {
        return "\(model) \(city)"
    }
    
    func getItemsFormated() -> String {
        return "Avião - Model: \(model) - City: \(city)"
    }
}
