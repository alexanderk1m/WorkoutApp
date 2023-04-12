//
//  SectionHeaderView.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 11.04.2023.
//

import UIKit

final class SectionHeaderView: UICollectionReusableView {
    
    static let id = "SectionHeaderView"
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = Res.Fonts.helveticaRegular(with: 13)
        label.textColor = Res.Colours.inactive
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with date: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM dd"
        
//        self.title.text = dateFormatter.string(from: date).uppercased()
        self.title.text = date.uppercased()
    }
    
    
}


extension SectionHeaderView {
    
    
    func setupViews() {
        setupView(title)
        
    }
    
    func constraintViews() {
        
        
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        ])
        
    }
    
    func configureAppearance() {
        
    }
    
}
