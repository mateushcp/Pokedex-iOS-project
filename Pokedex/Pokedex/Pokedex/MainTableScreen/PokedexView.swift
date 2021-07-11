//
//  PokedexView.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 02/07/21.
//

import UIKit

protocol PokedexViewDelegate{
    func show(pokemon: PokeData)
}

public class PokedexView: UIView, UITableViewDataSource, UITableViewDelegate {
    
    let pokemonData: PokemonList
    
    var delegate: PokedexViewDelegate?

//    var pokemon = [String]()
    
    init() {
        let pokemonLoader = PokeLoader()
        pokemonLoader.loader()
        pokemonData = pokemonLoader.pokeData ?? PokemonList(pokemon: [])
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    private lazy var pokedexImageHeader: UIImageView = {
        let image = UIImageView(image: UIImage.PokedexRetro)
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = false
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    private lazy var stackMenu: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        return stack
    }()
    
    private lazy var pokedexImageFooter: UIImageView = {
        let image = UIImageView(image: UIImage.PokedexInferior)
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = false
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    private lazy var pokedexImageTopHeader: UIImageView = {
        let image = UIImageView(image: UIImage.PokedexSuperior)
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = false
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    private lazy var tableDex: UITableView = {
        let table = UITableView()
        table.layer.masksToBounds = true
        table.translatesAutoresizingMaskIntoConstraints = false
        table.delegate = self
        table.backgroundColor = .white
        table.dataSource = self
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        return table
    }()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonData.pokemon.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }

        cell.populating(text: pokemonData.pokemon[indexPath.row].name.english, desc: pokemonData.pokemon[indexPath.row].type[0], id: pokemonData.pokemon[indexPath.row].id)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let pokemon = pokemonData.pokemon[indexPath.row]
        delegate?.show(pokemon: pokemon)
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }
   
    
    private func setupUI(){
        self.backgroundColor = UIColor.white
        
        addSubview(pokedexImageTopHeader)
        addSubview(pokedexImageHeader)
        addSubview(tableDex)
        addSubview(pokedexImageFooter)
 
        setupConstraints()
    }
    
    private func setupConstraints(){
        
        pokedexImageHeader.topAnchor.constraint(equalTo: pokedexImageTopHeader.bottomAnchor,constant: 48).isActive = true
        pokedexImageHeader.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6).isActive = true
        pokedexImageHeader.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

        pokedexImageHeader.heightAnchor.constraint(equalToConstant: 24).isActive = true
        pokedexImageHeader.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        pokedexImageFooter.topAnchor.constraint(equalTo: tableDex.bottomAnchor).isActive = true
        pokedexImageFooter.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        pokedexImageFooter.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        pokedexImageFooter.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true


        pokedexImageFooter.heightAnchor.constraint(equalToConstant: 180).isActive = true
        pokedexImageFooter.widthAnchor.constraint(equalToConstant: 18).isActive = true

        pokedexImageTopHeader.topAnchor.constraint(equalTo: topAnchor).isActive = true
        pokedexImageTopHeader.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        pokedexImageTopHeader.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

        pokedexImageTopHeader.heightAnchor.constraint(equalToConstant: 68).isActive = true
        pokedexImageTopHeader.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        tableDex.topAnchor.constraint(equalTo: pokedexImageHeader.bottomAnchor,constant: 68).isActive = true
        tableDex.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableDex.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        tableDex.bottomAnchor.constraint(equalTo: pokedexImageFooter.topAnchor).isActive = true

    }
}
