//
//  NaturalPerson.swift
//  Exercicio01SearchBar
//
//  Created by Cesar A. Tavares on 9/18/20.
//

import Foundation

class NaturalPerson: Person {
    var cpf: String
    
    init(name: String, cpf: String) {
        self.cpf = cpf
        super.init(name: name)
    }
}

extension NaturalPerson: ProtocolSearch {
    func getItemsFormated() -> String {
        return "Natural Person - Name: \(name) - CPF: \(cpf)"
    }
    func getItems() -> String {
        return "\(name) \(cpf)"
    }
}
