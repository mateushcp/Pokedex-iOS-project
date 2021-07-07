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
    
    @objc func item(){
        
    }
    
    @objc func pokemons(){
        
    }
    
    @objc func help(){
        
    }
    
    private lazy var pokedexImageHeader: UIImageView = {
        let image = UIImageView(image: UIImage.PokedexImage)
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = false
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()

    private lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 2
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        return stack
    }()
    
    private lazy var stackMenu: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually
        stack.axis = .horizontal
        return stack
    }()
    
    let pokemonsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Pokemon", for: .normal)
        button.layer.cornerRadius = 12
        button.heightAnchor.constraint(equalToConstant: 24).isActive = true
        button.backgroundColor = getUIColor(hex: "#ff4040")
        button.setTitleColor(.black, for: .normal)
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(pokemons), for: .touchUpInside)
        return button
    }()
    
    let itemButton: UIButton = {
        let button = UIButton()
        button.setTitle("Items", for: .normal)
        button.layer.cornerRadius = 12
        button.heightAnchor.constraint(equalToConstant: 24).isActive = true
        button.backgroundColor = getUIColor(hex: "#5B5B5B")
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(item), for: .touchUpInside)
        return button
    }()
    
    let helpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Help", for: .normal)
        button.layer.cornerRadius = 12
        button.heightAnchor.constraint(equalToConstant: 24).isActive = true
        button.backgroundColor = getUIColor(hex: "#5B5B5B")
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(help), for: .touchUpInside)
        return button
    }()
    
    private lazy var tableDex: UITableView = {
        let table = UITableView()
        table.layer.masksToBounds = true
        table.translatesAutoresizingMaskIntoConstraints = false
        table.delegate = self
        table.backgroundColor = .red
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

        cell.populating(text: pokemonData.pokemon[indexPath.row].name.english, desc: pokemonData.pokemon[indexPath.row].type[0])
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let pokemon = pokemonData.pokemon[indexPath.row]
        delegate?.show(pokemon: pokemon)
    }
    
    private func setupUI(){
        self.backgroundColor = UIColor.white
        
        addSubview(pokedexImageHeader)
        addSubview(stackMenu)
        addSubview(tableDex)
        
        stackMenu.addArrangedSubview(UIView.withWidth(12))
        stackMenu.addArrangedSubview(pokemonsButton)
        stackMenu.addArrangedSubview(UIView.withWidth(12))
        stackMenu.addArrangedSubview(itemButton)
        stackMenu.addArrangedSubview(UIView.withWidth(12))
        stackMenu.addArrangedSubview(helpButton)
        stackMenu.addArrangedSubview(UIView.withWidth(12))
 
        setupConstraints()
    }
    
    private func setupConstraints(){
            
        pokedexImageHeader.topAnchor.constraint(equalTo: topAnchor,constant: 48).isActive = true
        pokedexImageHeader.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        pokedexImageHeader.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

        pokedexImageHeader.heightAnchor.constraint(equalToConstant: 36).isActive = true
        pokedexImageHeader.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        stackMenu.topAnchor.constraint(equalTo: pokedexImageHeader.bottomAnchor,constant: 28).isActive = true
        stackMenu.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackMenu.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        tableDex.topAnchor.constraint(equalTo: stackMenu.bottomAnchor,constant: 8).isActive = true
        tableDex.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableDex.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        tableDex.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

    }
}
