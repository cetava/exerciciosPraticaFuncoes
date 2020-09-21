//
//  LegalPerson.swift
//  Exercicio05MonroeStreetJournal
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import Foundation

class LegalPerson: Client {
    var cnpj: String
    var numberOfEmployees: Int
    
    init(name: String, cnpj: String, numberOfEmployees: Int) {
        self.cnpj = cnpj
        self.numberOfEmployees = numberOfEmployees
        super.init(name: name)
    }
}

extension LegalPerson: ProtocolDigitalNews {
    func newsPaperDilevered() -> String {
        return "Agradecemos cordialmente o MonroeStreetJournal pela excelência dos serviços prestados."
    }
}
