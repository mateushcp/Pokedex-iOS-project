//
//  PokedexViewController.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 02/07/21.
//

import UIKit

class PokedexViewController: UIViewController {
    private lazy var pokedexView = PokedexView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        addConstraints()
    }

    override func loadView() {
        view = pokedexView
        pokedexView.delegate = self
    }

    private func addConstraints() {
        
        pokedexView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        pokedexView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        pokedexView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pokedexView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
    }
}

// MARK: - PokedexViewDelegate
extension PokedexViewController: PokedexViewDelegate {

    func show(pokemon: PokeData) {
        let descriptionViewController = DescriptionViewController()
        descriptionViewController.pokemon = pokemon
        self.navigationController?.pushViewController(descriptionViewController, animated: true)
    }
}
