//
//  StatsItemView.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 09.04.2023.
//

import UIKit

enum StatsItem {
    case averagePace(value: String)
    case heartRate(value: String)
    case totalDistance(value: String)
    case totalSteps(value: String)
    
    var data: ItemData {
        switch self {
        case .averagePace(value: let value):
            return .init(imageName: Res.Images.Session.averagePace!,
                         value: value + " / km",
                         title: Res.Strings.Session.averagePace)
        case .heartRate(value: let value):
            return .init(imageName: Res.Images.Session.heartRate!,
                         value: value + "bpm",
                         title: Res.Strings.Session.heartRate)
        case .totalDistance(value: let value):
            return .init(imageName: Res.Images.Session.totalDistance!,
                         value: value + " km",
                         title: Res.Strings.Session.totalDistance)
        case .totalSteps(value: let value):
            return .init(imageName: Res.Images.Session.totalSteps!,
                         value: value,
                         title: Res.Strings.Session.totalSteps)
        }
    }
}

class StatsItemView: WABaseView {
    
    private let imageView = UIImageView()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = Res.Fonts.helveticaRegular(with: 17)
        label.textColor = Res.Colours.titleGray
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Res.Fonts.helveticaRegular(with: 10)
        label.textColor = Res.Colours.inactive
        return label
    }()
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    func configure(with item: StatsItem) {
        imageView.image = item.data.imageName
        valueLabel.text = item.data.value
        titleLabel.text = item.data.title
    }
}


extension StatsItemView {
    override func setupViews() {
        super.setupViews()
        
        setupView(imageView)
        setupView(stackView)
        stackView.addArrangedSubview(valueLabel)
        stackView.addArrangedSubview(titleLabel)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 23),
            
            stackView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
