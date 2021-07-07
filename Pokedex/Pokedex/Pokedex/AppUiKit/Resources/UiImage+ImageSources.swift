//
//  UiImage+ImageSources.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 02/07/21.
//

import UIKit

extension UIImage{
       
    class var PokeballImage: UIImage{
        guard let image = UIImage(named: "pokeball") else {return #imageLiteral(resourceName: "pokeball") }
        return image
    }
    
    class var PokedexImage: UIImage{
        guard let image = UIImage(named: "Pokedex") else {return #imageLiteral(resourceName: "Pokedex") }
        return image
    }
}
