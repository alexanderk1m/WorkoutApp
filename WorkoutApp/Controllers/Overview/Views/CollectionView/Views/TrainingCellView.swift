//
//  TrainingCellView.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 11.04.2023.
//

import UIKit

final class TrainingCellView: UICollectionViewCell {
    
    static let id = "TrainingViewCell"
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 3
        return view
    }()
    
    private let checkmarkView: UIImageView = {
        let view = UIImageView()
        view.image = Res.Images.Overview.checkmarkNot
        return view
    }()
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = Res.Fonts.helveticaRegular(with: 17)
        label.textColor = Res.Colours.titleGray
        return label
    }()
    
    private let subtitle: UILabel = {
        let label = UILabel()
        label.font = Res.Fonts.helveticaRegular(with: 13)
        label.textColor = Res.Colours.inactive
        return label
    }()
    
    private let rightArrowView: UIImageView = {
        let view = UIImageView()
        view.image = Res.Images.Overview.rightArrow
        return view
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
    
    func configure(with title: String, subtitle: String, isDone: Bool ) {
        self.title.text = title
        self.subtitle.text = subtitle
        
        checkmarkView.image = isDone ? Res.Images.Overview.checkmarkDone : Res.Images.Overview.checkmarkNot
    }
}


extension TrainingCellView {
    
    func setupViews() {
        setupView(checkmarkView)
        setupView(stackView)
        stackView.addArrangedSubview(title)
        stackView.addArrangedSubview(subtitle)
        setupView(rightArrowView)
    }
    
    func constraintViews() {
        
        NSLayoutConstraint.activate([
            checkmarkView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            checkmarkView.centerYAnchor.constraint(equalTo: centerYAnchor),
            checkmarkView.heightAnchor.constraint(equalToConstant: 28),
            checkmarkView.widthAnchor.constraint(equalTo: checkmarkView.heightAnchor),
            
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: checkmarkView.trailingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: rightArrowView.leadingAnchor, constant: -15),
            
            rightArrowView.centerYAnchor.constraint(equalTo: centerYAnchor),
            rightArrowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            rightArrowView.heightAnchor.constraint(equalToConstant: 12),
            rightArrowView.widthAnchor.constraint(equalToConstant: 7),
            
        ])
        
    }
    
    func configureAppearance() {
        backgroundColor = .white
        layer.borderWidth = 1
        layer.borderColor = UIColor.clear.cgColor
        
        
    }
    
}
