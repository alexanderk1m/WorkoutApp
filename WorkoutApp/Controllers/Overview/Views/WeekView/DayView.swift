//
//  DayView.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 05.04.2023.
//

import UIKit


final class DayView: BaseView {
    
    private let nameLabel = UILabel()
    private let dateLabel = UILabel()
    private let stackView = UIStackView()
    
    func configure(with index: Int, and name: String) {
        let startOfWeek = Date().startOfWeek
        let currentDay = startOfWeek.goForward(to: index)
        let day = Calendar.current.component(.day, from: currentDay)
        let isToday = currentDay.stripTime() == Date().stripTime()
        backgroundColor = isToday ? Res.Colours.active : Res.Colours.background
        
        nameLabel.text = name.uppercased()
        nameLabel.textColor = isToday ? .white : Res.Colours.inactive
        dateLabel.text = "\(day)"
        dateLabel.textColor = isToday ? .white : Res.Colours.inactive
    }
}


extension DayView {
    override func setupViews() {
        super.setupViews()
        
        addView(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = Res.Colours.background
        layer.cornerRadius = 5
        layer.masksToBounds = true
        stackView.spacing = 3
        stackView.axis = .vertical
        
        nameLabel.font = Res.Fonts.helveticaRegular(with: 9)
        nameLabel.textAlignment = .center
        
        dateLabel.font = Res.Fonts.helveticaRegular(with: 15)
        dateLabel.textAlignment = .center
        
    }
    
    
}

