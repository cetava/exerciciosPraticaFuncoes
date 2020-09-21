//
//  Book.swift
//  Exercicio03Locadora
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import Foundation

class Book: Renatal {
    var numberOfPages: Int
    
    init(code: Int, name: String, numberOfPages: Int) {
        self.numberOfPages = numberOfPages
        super.init(code: code, name: name)
    }
    
    override func makeRent(name: String) -> String {
        return "O prazo para a entrega do Livro \(name) é de 15 dias"
    }
}
