//
//  File.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 09.04.2023.
//

import UIKit

final class StatsView: WABaseInfoView {
        
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 25
        return view
    }()
    
    func configure(with items: [StatsItem]) {
        items.forEach { itemData in
            let itemView = StatsItemView()
            itemView.configure(with: itemData)
            
            stackView.addArrangedSubview(itemView)
        }
    }
    
}

extension StatsView {
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)

        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}
