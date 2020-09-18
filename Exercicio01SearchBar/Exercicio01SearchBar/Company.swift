//
//  Company.swift
//  Exercicio01SearchBar
//
//  Created by Cesar A. Tavares on 9/18/20.
//

import Foundation

class Company: Person {
    var cnpj: String
    
    init(name: String, cnpj: String) {
        self.cnpj = cnpj
        super.init(name: name)
    }
}

extension Company: ProtocolSearch {
    func getItemsFormated() -> String {
        return "Company - Name: \(name) - CNPJ: \(cnpj)"
    }
    func getItems() -> String {
        return "\(name) \(cnpj)"
    }
}
