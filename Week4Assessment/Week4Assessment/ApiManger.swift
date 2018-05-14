//
//  ApiManger.swift
//  Week4Assessment
//
//  Created by Americo Lopez on 5/9/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ApiManger {
    
     let baseURL = "https://pokeapi.co/api/v2/pokemon"
    
    func getPokemon(name: String, onSucess: @escaping(JSON) -> Void) {
        let url = URL(string: "\(baseURL)/\(name)/")
        let request = Alamofire.request(url!)
        
        request.responseJSON { (response) in
            let apiResponse = JSON(response.value)
            print(apiResponse)
            onSucess(apiResponse)
        }
    }
}
