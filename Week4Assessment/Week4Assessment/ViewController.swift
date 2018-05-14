//
//  ViewController.swift
//  Week4Assessment
//
//  Created by Ryan Brashear on 4/30/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var pokemonNameTextField: UITextField!
    @IBOutlet weak var pokemonIDLabel: UILabel!
    @IBOutlet weak var PokemonweightLabel: UILabel!
    @IBOutlet weak var pokemonName: UILabel!
    
    let apiManger = ApiManger()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   

    @IBAction func submitButtonTapped(_ sender: Any) {
        apiManger.getPokemon(name: (pokemonNameTextField.text!)) { json in
            print(json)
            self.pokemonIDLabel.text = json["id"].stringValue
            self.pokemonName.text = json["name"].stringValue
            self.PokemonweightLabel.text = json["weight"].stringValue
        }
    }

}

