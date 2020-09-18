//
//  Pen.swift
//  Exercicio01SearchBar
//
//  Created by Cesar A. Tavares on 9/18/20.
//

import Foundation

class Pen {
    var brand: String
    
    init(brand: String) {
        self.brand = brand
    }
}

extension Pen: ProtocolSearch {
    func getItemsFormated() -> String {
        return "Pen - Brand: \(brand)"
    }
    func getItems() -> String {
        return "\(brand)"
    }
}
