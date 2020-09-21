//
//  Renatal.swift
//  Exercicio03Locadora
//
//  Created by Cesar A. Tavares on 9/19/20.
//

import Foundation

class Renatal {
    var code: Int
    var name: String
    
    init(code: Int, name: String) {
        self.code = code
        self.name = name
    }
    
    func makeRent(name: String) -> String {
        return "O prazo para a entrega do DVD do(a) \(name) é de XX dias"
    }
}
