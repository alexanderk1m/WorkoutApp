//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 04.04.2023.
//

import UIKit

class SessionController: WABaseController {
    private let timerView = TimerView()
    private let statsView = StatsView(with: Res.Strings.Session.workoutStats)
    private let stepsView = StepsView(with: Res.Strings.Session.stepsCounter)
    
    private let timerDuration = 5.0
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.navBarRightButtonHandler()
                }
            }
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRunning ? .isStopped : .isRunning
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
        view.setupView(statsView)
        view.setupView(stepsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),

            statsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 11),
            statsView.leadingAnchor.constraint(equalTo: timerView.leadingAnchor),
            statsView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant:  -7.5),
            statsView.heightAnchor.constraint(equalToConstant: 310),

            stepsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 11),
            stepsView.trailingAnchor.constraint(equalTo: timerView.trailingAnchor),
            stepsView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant:  7.5),
            stepsView.heightAnchor.constraint(equalToConstant: 310),

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
