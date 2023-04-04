//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 04.04.2023.
//

import UIKit

class ProgressController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.tabBar.progress
        addNavBarButton(at: .left, with: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.navBarRight)
        
    }
    
    override func navBarLeftButtonHandler() {
        print("Progress NavBar Left Button Item Tapped")
    }
    
    override func navBarRightButtonHandler() {
        print("Progress NavBar Right Button Item Tapped")
    }
}
