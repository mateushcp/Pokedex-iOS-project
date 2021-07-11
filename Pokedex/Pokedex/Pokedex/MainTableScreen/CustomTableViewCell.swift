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
        label.textColor = getUIColor(hex: "#080808")
        label.font = UIFont(name: "VPPixel-Simplified", size: 18)
        label.textAlignment = NSTextAlignment.left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var populationDescCell: UILabel = {
        let label = UILabel()
        label.textColor = getUIColor(hex: "#5B5B5B")
        label.font = UIFont(name: "VPPixel-Simplified", size: 13)
        label.textAlignment = NSTextAlignment.left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var populationIDCell: UILabel = {
        let label = UILabel()
        label.textColor = getUIColor(hex: "#080808")
        label.backgroundColor = getUIColor(hex: "#D8D8D8")
        label.layer.cornerRadius = 8
        label.layer.masksToBounds = true
        label.font = UIFont(name: "VPPixel-Simplified", size: 24)
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
    
    public func populating(text: String, desc: String, id: Int){
        populationCell.text = text
        populationCell.addCharacterSpacing(kernValue: 0.6)
        populationDescCell.text = desc
        populationIDCell.text = " " + String(id) + " "
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

        populationCell.leadingAnchor.constraint(equalTo: populationIDCell.trailingAnchor, constant: 16).isActive = true
        populationDescCell.topAnchor.constraint(equalTo: populationCell.bottomAnchor, constant: 1).isActive = true
        populationDescCell.leadingAnchor.constraint(equalTo: populationIDCell.trailingAnchor, constant: 16).isActive = true

    }
}

extension UILabel {
  func addCharacterSpacing(kernValue: Double = 1.5) {
    if let labelText = text, labelText.count > 0 {
      let attributedString = NSMutableAttributedString(string: labelText)
        attributedString.addAttribute(NSAttributedString.Key.kern, value: kernValue, range: NSRange(location: 0, length: attributedString.length - 1))
      attributedText = attributedString
    }
  }
}
