//
//  NaturalPerson.swift
//  Exercicio05MonroeStreetJournal
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import Foundation

class NaturalPerson: Client {
    var rg: String
    var deliveryAddress: String
    
    init(name: String, rg: String, deliveryAddress: String) {
        self.rg = rg
        self.deliveryAddress = deliveryAddress
        super.init(name: name)
    }
}

extension NaturalPerson: ProtocolDigitalNews{
    func newsPaperDilevered() -> String {
        return "Muito obrigado, MonroeStreetJournal. Vocês são demais!"
    }
}
