//
//  PokeData.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 05/07/21.
//


import UIKit

struct PokemonList: Codable {
    let pokemon: [PokeData]
}

struct PokeData: Codable {
    var id: Int
    var name: nameType
    var type: [String]
    var base: baseType
}

struct nameType: Codable {
    var english: String
    var japanese: String
    var chinese: String
    var french: String
}

struct baseType: Codable {
    var HP: Int
    var Attack: Int
    var Defense: Int
    var SpAttack: Int
    var SpDefense: Int
    var Speed: Int
}
