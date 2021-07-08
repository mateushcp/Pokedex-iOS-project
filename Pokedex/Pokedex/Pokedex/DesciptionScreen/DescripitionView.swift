//
//  DescripitionView.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 06/07/21.
//


import UIKit

public class DescriptionView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private lazy var pokedexImageHeader: UIImageView = {
        let image = UIImageView(image: UIImage.PokedexImage)
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = false
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    private lazy var pokedexImageFooter: UIImageView = {
        let image = UIImageView(image: UIImage.Pokedexdivider)
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = false
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    private lazy var pokedexImageTopHeader: UIImageView = {
        let image = UIImageView(image: UIImage.Pokedexdivider)
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = false
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
 
    
    private func setupUI(){
        addSubview(pokedexImageTopHeader)
        addSubview(pokedexImageHeader)
        addSubview(pokedexImageFooter)
        
        setupConstraints()
    }
    
    private func setupConstraints(){
        
        pokedexImageHeader.topAnchor.constraint(equalTo: pokedexImageTopHeader.bottomAnchor,constant: 24).isActive = true
        pokedexImageHeader.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        pokedexImageHeader.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

        pokedexImageHeader.heightAnchor.constraint(equalToConstant: 48).isActive = true
        pokedexImageHeader.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        pokedexImageFooter.topAnchor.constraint(equalTo:  bottomAnchor,constant: 36).isActive = true
        pokedexImageFooter.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        pokedexImageFooter.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        pokedexImageFooter.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true


        pokedexImageFooter.heightAnchor.constraint(equalToConstant: 68).isActive = true
        pokedexImageFooter.widthAnchor.constraint(equalToConstant: 18).isActive = true

        pokedexImageTopHeader.topAnchor.constraint(equalTo: topAnchor).isActive = true
        pokedexImageTopHeader.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        pokedexImageTopHeader.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

        pokedexImageTopHeader.heightAnchor.constraint(equalToConstant: 68).isActive = true
        pokedexImageTopHeader.widthAnchor.constraint(equalToConstant: 18).isActive = true
   
    }
}
