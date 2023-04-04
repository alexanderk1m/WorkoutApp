//
//  Resources.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 03.04.2023.
//

import UIKit

enum Resources {
    
    enum Colours {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        
        static var separator = UIColor(hexString: "#E8ECEF")
        static var background = UIColor(hexString: "#F8F9F9")
        
        static var titleGray = UIColor(hexString: "#545C77")
        
        
    }
    
    enum Strings {
        enum tabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "overview_tab")
            static var session = UIImage(named: "session_tab")
            static var progress = UIImage(named: "progress_tab")
            static var settings = UIImage(named: "settings_tab")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
