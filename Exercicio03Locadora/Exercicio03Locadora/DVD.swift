//
//  DVD.swift
//  Exercicio03Locadora
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import Foundation

class DVD: Renatal {
    var videoFormat: String
    
    init(code: Int, name: String, videoFormat: String) {
        self.videoFormat = videoFormat
        super.init(code: code, name: name)
    }
    
    override func makeRent(name: String) -> String {
        return "O prazo para a entrega do DVD \(name) é de 05 dias"
    }
    
}
