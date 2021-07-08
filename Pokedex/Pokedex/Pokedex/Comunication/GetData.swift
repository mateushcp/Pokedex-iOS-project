//
//  GetData.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 08/07/21.
//

import UIKit

struct GetPokemon: Codable {
    var id: Int
    var name: String
    var type: [String]
    var image: String
}
