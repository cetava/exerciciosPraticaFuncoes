//
//  Bookmakers.swift
//  Exercicio04Hipodromo
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import Foundation

class Bookmakers: ProtocolRacecourse {
    var name: String
    private var patrimony: Double
    
    init(name: String, patrimony: Double) {
        self.name = name
        self.patrimony = patrimony
    }
    
    func notifyInterest() -> String {
        setPatrimony(profit: getPatrimony() + 1000.00)
        print("\(getPatrimony())")
        return "Ganhando grana!"
    }
    
    func getPatrimony() -> Double {
        return patrimony
    }
    
    func setPatrimony(profit: Double){
        self.patrimony = profit
    }
}
