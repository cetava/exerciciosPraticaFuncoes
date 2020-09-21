//
//  Car.swift
//  Exercicio03Locadora
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import Foundation

class Car: Renatal {
    var plate: String
    
    init(code: Int, name: String, plate: String) {
        self.plate = plate
        super.init(code: code, name: name)
    }
    
    override func makeRent(name: String) -> String {
        return "O prazo para a entrega do Carro \(name) é de 07 dias"
    }
}
