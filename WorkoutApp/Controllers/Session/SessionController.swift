//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 04.04.2023.
//

import UIKit

class SessionController: WABaseController {
    private let timerView = TimerView()
    
    private let timerDuration = 3.0
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer()
        } else if timerView.state == .isPaused {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRunning ? .isPaused : .isRunning
        setTitleForNavBarButton(timerView.state == .isRunning ? Res.Strings.Session.navBarPause :
                                    Res.Strings.Session.navBarStart,
                                at: .left)
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        setTitleForNavBarButton(Res.Strings.Session.navBarStart, at: .left)
    }
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
    

    override func configureAppearance() {
        super.configureAppearance()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Res.Strings.NavBar.session
        navigationController?.tabBarItem.title = Res.Strings.TabBar.title(for: .session)
        addNavBarButton(at: .left, with: Res.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: Res.Strings.Session.navBarFinish)
        
        timerView.configureTimer(with: timerDuration, progress: 0)
    }
}
