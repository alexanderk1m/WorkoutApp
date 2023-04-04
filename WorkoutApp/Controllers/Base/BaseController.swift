//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 04.04.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()

    }
    
    
}


@objc extension BaseController {
    
    func addViews() {
        
    }
    
    func layoutViews() {
        
    }
    
    func configure() {
        view.backgroundColor = Resources.Colours.background
        
    }
    
    func navBarLeftButtonHandler() {
        print("left button nav")
    }
    
    func navBarRightButtonHandler() {
        print("right button nav")
    }
}


extension BaseController {
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colours.active, for: .normal)
        button.setTitleColor(Resources.Colours.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)

        }
    }
    

}
