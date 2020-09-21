//
//  CD.swift
//  Exercicio03Locadora
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import Foundation

class CD: Renatal {
    var singer: String
    
    init(code: Int, name: String, singer: String) {
        self.singer = singer
        super.init(code: code, name: name)
    }
    
    override func makeRent(name: String) -> String {
        return "O prazo para a entrega do CD \(name) é de 03 dias"
    }
}
