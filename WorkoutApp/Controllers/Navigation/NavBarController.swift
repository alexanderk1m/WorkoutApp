//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 04.04.2023.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Res.Colours.titleGray,
                .font: Res.Fonts.helveticaRegular(with: 17)
        ]
        
        navigationBar.addBottomBorder(with: Res.Colours.separator, height: 1)
    }
    
}


