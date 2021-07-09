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
    
    class var PokedexRetro: UIImage{
        guard let image = UIImage(named: "PokedexRetro") else {return #imageLiteral(resourceName: "Pokedex") }
        return image
    }
    
    class var Pokedexdivider: UIImage{
        guard let image = UIImage(named: "pokedexdivider") else {return #imageLiteral(resourceName: "Pokedex") }
        return image
    }
    
    class var PokedexSuperior: UIImage{
        guard let image = UIImage(named: "pokedexsuperior") else {return #imageLiteral(resourceName: "Pokedex") }
        return image
    }
    
    class var PokedexInferior: UIImage{
        guard let image = UIImage(named: "pokedexinferior") else {return #imageLiteral(resourceName: "Pokedex") }
        return image
    }
    
    class var PokedexSuperior2: UIImage{
        guard let image = UIImage(named: "pokedexsuperior2") else {return #imageLiteral(resourceName: "Pokedex") }
        return image
    }
    
    class var PokedexInferior2: UIImage{
        guard let image = UIImage(named: "pukedexinferior2") else {return #imageLiteral(resourceName: "Pokedex") }
        return image
    }
    
}
