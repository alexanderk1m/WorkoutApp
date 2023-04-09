//
//  File.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 09.04.2023.
//

import UIKit

final class StatsView: WABaseInfoView {
    
    private let itemView = StatsItemView()
    
    
    override func setupViews() {
        super.setupViews()
        
        setupView(itemView)
        itemView.configure(with: StatsItemView.StatsItem(imageName: Res.Images.Session.heartRate!,
                                                         value: "155 BPM",
                                                         title: Res.Strings.Session.heartRate))
        
        NSLayoutConstraint.activate([
            itemView.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            itemView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
