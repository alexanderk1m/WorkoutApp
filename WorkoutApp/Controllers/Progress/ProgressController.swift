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
        

        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resources.Strings.tabBar.progress
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
        
    }
    
    override func navBarLeftButtonHandler() {
        print("Progress NavBar Left Button Item Tapped")
    }
    
    override func navBarRightButtonHandler() {
        print("Progress NavBar Right Button Item Tapped")
    }
}
