//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 05.04.2023.
//

import UIKit


final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
    private let weekView: UIView = {
        let view = UIView()
        view.backgroundColor = Resources.Colours.active.withAlphaComponent(0.3)
        
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: Resources.Colours.separator, height: 1)

    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addButtonAdditingAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }

}

extension OverviewNavBar {
    override func addViews() {
        super.addViews()
        
        addView(allWorkoutsButton)
        addView(titleLabel)
        addView(addButton)
        addView(weekView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.topAnchor.constraint(equalTo: allWorkoutsButton.bottomAnchor, constant: 15),
            weekView.heightAnchor.constraint(equalToConstant: 47),
            
        ])
    }
    
    override func configure() {
        super.configure()
        backgroundColor = .white
        
        titleLabel.text = Resources.Strings.NavBar.overview
        titleLabel.textColor = Resources.Colours.titleGray
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        
        addButton.setImage(Resources.Images.Common.add, for: .normal)
    }
}



