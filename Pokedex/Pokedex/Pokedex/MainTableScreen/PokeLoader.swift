//
//  PokeLoader.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 05/07/21.
//

import UIKit

public class PokeLoader {
    
    @Published var pokeData: PokemonList?
    
    func loader() {
        if let fileLocation = Bundle.main.url(forResource: "pokedex", withExtension: "json") {
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode(PokemonList.self, from: data)
                
                self.pokeData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
}
