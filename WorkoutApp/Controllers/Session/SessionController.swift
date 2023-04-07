//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 04.04.2023.
//

import UIKit

class SessionController: WABaseController {
    private let timerView: TimerView = {
        let view = TimerView()
        return view
    }()
}

extension SessionController {
    
    override func setupViews() {
        super.setupViews()
        view.setupView(timerView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 400),
        ])
    }
    
    override func navBarLeftButtonHandler() {
        print("PAUSE")
    }
    
    override func navBarRightButtonHandler() {
        print("FINISH")
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Res.Strings.NavBar.session
        navigationController?.tabBarItem.title = Res.Strings.TabBar.title(for: .session)
        addNavBarButton(at: .left, with: Res.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Res.Strings.Session.navBarRight)
        
    }
}
