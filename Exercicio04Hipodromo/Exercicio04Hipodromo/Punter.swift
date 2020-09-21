//
//  Punter.swift
//  Exercicio04Hipodromo
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import Foundation

class Punter: ProtocolRacecourse {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func notifyInterest() -> String {
        return "Ladrões, Ladrões, Ladrões!"
    }
    
}

