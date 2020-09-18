//
//  ViewController.swift
//  Exercicio01SearchBar
//
//  Created by Cesar A. Tavares on 9/18/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBarFind: UISearchBar!
    @IBOutlet weak var labelItems: UILabel!
    
    var arrayItems = [ProtocolSearch]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBarFind.delegate = self
        arrayItems.append(AirPlane(model: "Boing", city: "São Paulo"))
        arrayItems.append(Pen(brand: "BIC"))
        arrayItems.append(Dog(name: "Mel", type: "Pinscher"))
        arrayItems.append(NaturalPerson(name: "Cesar", cpf: "111.111.111-00"))
        arrayItems.append(Company(name: "Apple", cnpj: "00.000.000/00001-00"))
  
    }
    
    func searchItem(searchItem: String) {
        var arrayItems2 = [ProtocolSearch]()
        var items: String = ""
        
        for item in arrayItems {
            if item.getItems().lowercased().contains(searchItem.lowercased()) {
                arrayItems2.append(item)
            }
        }
        
        for item in arrayItems2 {
            items = "\(item.getItemsFormated())\n\(items)"
        }
        
        labelItems.text = items
    }
    
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let item = searchBarFind.text {
            searchItem(searchItem: item)
        }
    }
}

