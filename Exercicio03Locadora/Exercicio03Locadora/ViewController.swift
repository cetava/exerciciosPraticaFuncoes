//
//  ViewController.swift
//  Exercicio03Locadora
//
//  Created by Cesar A. Tavares on 9/19/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelReturnPeriod: UILabel!
    @IBOutlet weak var labelInfos: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionButtonDVD(_ sender: Any) {
        labelReturnPeriod.text = ""
        let dvd = DVD(code: 01, name: "Guns N' Roses - Appetite For Democracy", videoFormat: "Full HD")
        labelReturnPeriod.text = dvd.makeRent(name: dvd.name)
        labelInfos.text = "Código do produto: \(dvd.code)\nFormato de Vídeo: \(dvd.videoFormat)"
    }
    
    @IBAction func actionButtonCD(_ sender: Any) {
        labelReturnPeriod.text = ""
        let cd = CD(code: 02, name: "Kill 'Em All", singer: "Metallica")
        labelReturnPeriod.text = cd.makeRent(name: cd.name)
        labelInfos.text = "Código do produto: \(cd.code)\nCantor(a)/Banda: \(cd.singer)"
    }
    
    @IBAction func actionButtonBook(_ sender: Any) {
        labelReturnPeriod.text = ""
        let book = Book(code: 03, name: "O Retorno do Rei", numberOfPages: 416)
        labelReturnPeriod.text = book.makeRent(name: book.name)
        labelInfos.text = "Código do produto: \(book.code)\nNúmero de Páginas: \(book.numberOfPages)"
    }
    
    @IBAction func actionButtonCar(_ sender: Any) {
        labelReturnPeriod.text = ""
        let car = Car(code: 04, name: "Porsche 911", plate: "A0234FR7")
        labelReturnPeriod.text = car.makeRent(name: car.name)
        labelInfos.text = "Código do produto: \(car.code)\nPlaca: \(car.plate)"
    }


}

