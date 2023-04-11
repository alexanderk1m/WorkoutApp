//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 04.04.2023.
//

import UIKit

final class ProgressController: WABaseController {
    
    private let dailyPerformanceView = DailyPerformanceView(with: Res.Strings.Progress.dailyPerformance,
                                                            buttonTitle: Res.Strings.Progress.last7Days)
    
}


extension ProgressController {
    
    override func setupViews() {
        super.setupViews()
        
        view.setupView(dailyPerformanceView)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68),

        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = Res.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Res.Strings.TabBar.title(for: Tabs.progress)
        
        addNavBarButton(at: .left, with: Res.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Res.Strings.Progress.navBarRight)
        
        dailyPerformanceView.configure(with: [WABarView.Data.init(value: "1", heightMultiplier: 0.2, title: "mon"),
                                              WABarView.Data.init(value: "2", heightMultiplier: 0.4, title: "tue"),
                                              WABarView.Data.init(value: "3", heightMultiplier: 0.6, title: "wed"),
                                              WABarView.Data.init(value: "4", heightMultiplier: 0.8, title: "thu"),
                                              WABarView.Data.init(value: "5", heightMultiplier: 1, title: "fri"),
                                              WABarView.Data.init(value: "3", heightMultiplier: 0.6, title: "sat"),
                                              WABarView.Data.init(value: "2", heightMultiplier: 0.4, title: "sun"),
                                             ])
        
    }
    
    override func navBarRightButtonHandler() {
        print("DETAILS")
    }
    
    override func navBarLeftButtonHandler() {
        print("EXPORT")
    }
}
