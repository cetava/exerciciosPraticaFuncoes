//
//  ViewController.swift
//  Exercicio04Hipodromo
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let punter = Punter(name: "Cesar")
        let kronikatv = KronikaTv(name: "KronikaTv")
        let bookmakers = Bookmakers(name: "Casa de Apostas All In", patrimony: 100000)
        
        punter.notifyInterest()
        kronikatv.notifyInterest()
        bookmakers.notifyInterest()
    }
}

