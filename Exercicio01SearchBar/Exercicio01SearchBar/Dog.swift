//
//  Dog.swift
//  Exercicio01SearchBar
//
//  Created by Cesar A. Tavares on 9/18/20.
//

import Foundation

class Dog {
    var name: String
    var type: String
    
    init(name: String, type: String) {
        self.name = name
        self.type = type
    }
}

extension Dog: ProtocolSearch {
    func getItemsFormated() -> String {
        return "Dog - Name: \(name) - Type: \(type)"
    }
    func getItems() -> String {
        return "\(name) \(type)"
    }
}
