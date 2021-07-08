//
//  PokeApi.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 08/07/21.
//

import UIKit

public class PokeApi {

    static func getPokemon(){
        let url = URL(string: "https://apiintermedpokemon.herokuapp.com/api/PokemonAPI/GetPokemon?id=1" )!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        }
    }

