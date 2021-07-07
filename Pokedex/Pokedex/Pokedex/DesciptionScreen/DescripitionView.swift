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
    
    private func setupUI(){
        setupConstraints()
    }
    
    private func setupConstraints(){
        
    }
}
