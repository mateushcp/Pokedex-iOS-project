//
//  CustomTableViewCell.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 02/07/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
   
    static let identifier = "CustomTableViewCell"
   
    private lazy var changer: UISwitch = {
        let changer = UISwitch()
        changer.onTintColor = .black
        changer.isOn = true
        changer.translatesAutoresizingMaskIntoConstraints = false
        return changer
    }()
    
    private lazy var pokeballImage: UIImageView = {
        let image = UIImageView(image: UIImage.PokeballImage)
        image.contentMode = .scaleAspectFill
        image.isUserInteractionEnabled = false
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var populationCell: UILabel = {
        let label = UILabel()
        label.textColor = getUIColor(hex: "#5B5B5B")
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.textAlignment = NSTextAlignment.left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var populationDescCell: UILabel = {
        let label = UILabel()
        label.textColor = getUIColor(hex: "#9a8989")
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textAlignment = NSTextAlignment.left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func populating(text: String, desc: String){
        populationCell.text = text
        populationDescCell.text = desc
    }
    
    override func prepareForReuse() {
           super.prepareForReuse()
           populationCell.text = nil
           changer.isOn = true
       }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    private func setupUI(){
        self.backgroundColor = UIColor.white
        
        contentView.addSubview(changer)
        contentView.addSubview(pokeballImage)
        contentView.addSubview(populationCell)
        contentView.addSubview(populationDescCell)


        
        setupConstraints()
    }
    
    private func setupConstraints(){
        
        changer.frame = CGRect( x: 7, y: 8, width: 28, height: contentView.frame.height-16)
        
        pokeballImage.heightAnchor.constraint(equalToConstant: 8).isActive = true
        pokeballImage.widthAnchor.constraint(equalToConstant: 38).isActive = true
        pokeballImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 4).isActive = true
        pokeballImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        pokeballImage.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 4).isActive = true

        populationCell.leadingAnchor.constraint(equalTo: changer.trailingAnchor, constant: 8).isActive = true
        populationDescCell.topAnchor.constraint(equalTo: populationCell.bottomAnchor, constant: 2).isActive = true
        populationDescCell.leadingAnchor.constraint(equalTo: changer.trailingAnchor, constant: 8).isActive = true

    }
}

