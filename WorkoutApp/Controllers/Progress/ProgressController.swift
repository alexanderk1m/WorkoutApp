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
    
    private let monthlyPerformanceView = MonthlyPerformanceView(with: Res.Strings.Progress.monthlyPerformance,
                                                            buttonTitle: Res.Strings.Progress.last10Month)
}


extension ProgressController {
    
    override func setupViews() {
        super.setupViews()
        
        view.setupView(dailyPerformanceView)
        view.setupView(monthlyPerformanceView)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68),
            
            monthlyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            monthlyPerformanceView.topAnchor.constraint(equalTo: dailyPerformanceView.bottomAnchor, constant: 15),
            monthlyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            monthlyPerformanceView.heightAnchor.constraint(equalTo: monthlyPerformanceView.widthAnchor,
                                                           multiplier: 1.06),

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
                                              WABarView.Data.init(value: "5", heightMultiplier: 1.0, title: "fri"),
                                              WABarView.Data.init(value: "3", heightMultiplier: 0.6, title: "sat"),
                                              WABarView.Data.init(value: "2", heightMultiplier: 0.4, title: "sun"),
                                             ])
        
        monthlyPerformanceView.configure(with: [WAChartsView.Data.init(value: 45, title: "mar"),
                                                WAChartsView.Data.init(value: 55, title: "apr"),
                                                WAChartsView.Data.init(value: 60, title: "may"),
                                                WAChartsView.Data.init(value: 65, title: "jun"),
                                                WAChartsView.Data.init(value: 70, title: "jul"),
                                                WAChartsView.Data.init(value: 80, title: "aug"),
                                                WAChartsView.Data.init(value: 65, title: "sep"),
                                                WAChartsView.Data.init(value: 45, title: "oct"),
                                                WAChartsView.Data.init(value: 30, title: "nov"),
                                                WAChartsView.Data.init(value: 15, title: "dec"),
                                               ])
        
    }
    
    override func navBarRightButtonHandler() {
        print("DETAILS")
    }
    
    override func navBarLeftButtonHandler() {
        print("EXPORT")
    }
}
