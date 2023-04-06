//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 04.04.2023.
//

import UIKit

class ProgressController: WABaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        title = Res.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Res.Strings.TabBar.title(for: Tabs.progress)
        addNavBarButton(at: .left, with: Res.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Res.Strings.Progress.navBarRight)
        
    }
    
    override func navBarLeftButtonHandler() {
        print("Progress NavBar Left Button Item Tapped")
    }
    
    override func navBarRightButtonHandler() {
        print("Progress NavBar Right Button Item Tapped")
    }
}
