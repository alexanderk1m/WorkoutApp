//
//  WABarView.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 10.04.2023.
//

import UIKit

extension WABarView {
    struct Data {
        let value: String
        let heightMultiplier: Double
        let title: String
    }
    
}

final class WABarView: WABaseView {
    
    private let heightMultiplier: Double
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = Res.Fonts.helveticaRegular(with: 13)
        label.textColor = Res.Colours.active
        return label
    }()
    
    private let barView: UIView = {
        let view = UIView()
        view.backgroundColor = Res.Colours.active
        view.layer.cornerRadius = 2.5
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Res.Fonts.helveticaRegular(with: 9)
        label.textColor = Res.Colours.inactive
        return label
    }()
    
    init(data: Data) {
        self.heightMultiplier = data.heightMultiplier
        super.init(frame: .zero)
        
        self.valueLabel.text = data.value
        self.titleLabel.text = data.title
    
    }
    
    required init?(coder: NSCoder) {
        self.heightMultiplier = 0
        fatalError("init(coder:) has not been implemented")
    }
    
}


extension WABarView {
    override func setupViews() {
        super.setupViews()
        
        setupView(valueLabel)
        setupView(barView)
        setupView(titleLabel)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            valueLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            barView.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 5),
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.widthAnchor.constraint(equalToConstant: 17),
            barView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: heightMultiplier, constant: -40),
            
            titleLabel.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()

    }
}
