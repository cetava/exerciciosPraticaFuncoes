//
//  KronikaTv.swift
//  Exercicio04Hipodromo
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import Foundation

class KronikaTv: ProtocolRacecourse {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func notifyInterest() -> String {
        return "Chegou o verão no hipódromo!"
    }
}
