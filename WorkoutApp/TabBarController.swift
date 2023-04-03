//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 02.04.2023.
//

import UIKit


enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}


final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colours.active
        tabBar.barTintColor = Resources.Colours.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colours.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        overviewController.view.backgroundColor = .blue
        overviewController.title = Resources.Strings.tabBar.overview
        let sessionController = UIViewController()
        sessionController.view.backgroundColor = .yellow
        sessionController.title = Resources.Strings.tabBar.session
        let progressController = UIViewController()
        progressController.view.backgroundColor = .red
        progressController.title = Resources.Strings.tabBar.progress
        let settingsController = UIViewController()
        settingsController.view.backgroundColor = .green
        settingsController.title = Resources.Strings.tabBar.session
        
        let overviewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionNavigation = UINavigationController(rootViewController: sessionController)
        let progressNavigation = UINavigationController(rootViewController: progressController)
        let settingsNavigation = UINavigationController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.overview, image: Resources.Images.TabBar.overview, tag: Tabs.overview.rawValue)
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.session, image: Resources.Images.TabBar.session, tag: Tabs.session.rawValue)
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.progress, image: Resources.Images.TabBar.progress, tag: Tabs.progress.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.settings, image: Resources.Images.TabBar.session, tag: Tabs.settings.rawValue)
        
        setViewControllers([overviewNavigation, sessionNavigation, progressNavigation, settingsNavigation], animated: false)
        
        
    }
}




