//
//  ViewController.swift
//  Exercicio05MonroeStreetJournal
//
//  Created by Cesar A. Tavares on 9/20/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSentNewsPaper: UILabel!
    @IBOutlet weak var labelReturnSubscribers: UILabel!
    let naturalPerson = NaturalPerson(name: "Cesar", rg: "11222333-4", deliveryAddress: "Rua Logo Alí, S/N")
    let legalPerson = LegalPerson(name: "Digial House", cnpj: "00999888/0001-77", numberOfEmployees: 300)
    var arrayClients = [Client]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func sendNewsPaper() {
        arrayClients.append(naturalPerson)
        arrayClients.append(legalPerson)
        for item in arrayClients {
            labelSentNewsPaper.text = "\(labelSentNewsPaper.text!)\(item.name), o seu exemplar de hoje já está disponível!\n"
        }
    }
    
    @IBAction func actionButtonSend(_ sender: Any) {
        sendNewsPaper()
    }
    
    @IBAction func actionButtonNaturalPersonReply(_ sender: Any) {
        labelReturnSubscribers.text = naturalPerson.newsPaperDilevered()
    }
    
    @IBAction func actionButtonLegalPerson(_ sender: Any) {
        labelReturnSubscribers.text = legalPerson.newsPaperDilevered()
    }
}

