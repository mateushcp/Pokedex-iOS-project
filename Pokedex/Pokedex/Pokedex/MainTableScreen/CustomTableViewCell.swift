//
//  CustomTableViewCell.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 02/07/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
   
    static let identifier = "CustomTableViewCell"
   
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
    
    private lazy var populationIDCell: UILabel = {
        let label = UILabel()
        label.textColor = getUIColor(hex: "#5B5B5B")
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textAlignment = NSTextAlignment.center
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
    
    public func populating(text: String, desc: String, id: Int){
        populationCell.text = text
        populationDescCell.text = desc
        populationIDCell.text = "#" + String(id)
    }
    
    override func prepareForReuse() {
           super.prepareForReuse()
           populationCell.text = nil
       }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    private func setupUI(){
        self.backgroundColor = UIColor.white
        
        contentView.addSubview(populationCell)
        contentView.addSubview(populationDescCell)
        contentView.addSubview(populationIDCell)


        
        setupConstraints()
    }
    
    private func setupConstraints(){
        
        populationIDCell.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true

        populationCell.leadingAnchor.constraint(equalTo: populationIDCell.trailingAnchor, constant: 8).isActive = true
        populationDescCell.topAnchor.constraint(equalTo: populationCell.bottomAnchor, constant: 2).isActive = true
        populationDescCell.leadingAnchor.constraint(equalTo: populationIDCell.trailingAnchor, constant: 8).isActive = true

    }
}

