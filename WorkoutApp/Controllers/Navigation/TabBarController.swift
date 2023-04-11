//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 02.04.2023.
//

import UIKit


enum Tabs: Int, CaseIterable {
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
    
    func switchTo(tab: Tabs) {
        selectedIndex = tab.rawValue
    }
    
    private func configure() {
        tabBar.tintColor = Res.Colours.active
        tabBar.barTintColor = Res.Colours.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = Res.Colours.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        

        let tabBarControllers: [NavBarController] = Tabs.allCases.map { tab in
            let navController = NavBarController(rootViewController: getController(for: tab))
            navController.tabBarItem = UITabBarItem(title: Res.Strings.TabBar.title(for: tab),
                                                 image: Res.Images.TabBar.icon(for: tab),
                                                 tag: tab.rawValue)
            return navController
        }
        
        setViewControllers(tabBarControllers, animated: false)
    }
    
    private func getController(for tab: Tabs) -> WABaseController {
        switch tab {
        case .overview: return OverviewController()
        case .session: return SessionController()
        case .progress: return ProgressController()
        case .settings: return SettingsController()
        }
    }
    
}




