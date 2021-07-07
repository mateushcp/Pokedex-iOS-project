//
//  DescripitionView.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 06/07/21.
//


import UIKit

class DescriptionViewController: UIViewController {
    
    private lazy var descriptionView = DescriptionView()
    
    public var pokemon: PokeData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        addConstraints()
    }
    private func setup() {
        view.addSubview(descriptionView)
    }
    private func addConstraints() {
        descriptionView.translatesAutoresizingMaskIntoConstraints = false
        descriptionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        descriptionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        descriptionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        descriptionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    

    }
}


