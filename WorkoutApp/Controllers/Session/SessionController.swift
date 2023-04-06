//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 04.04.2023.
//

import UIKit

class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Res.Strings.NavBar.session
        navigationController?.tabBarItem.title = Res.Strings.TabBar.title(for: .session)
        addNavBarButton(at: .left, with: Res.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Res.Strings.Session.navBarRight)
        
    }
    
}
