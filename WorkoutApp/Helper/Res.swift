//
//  Resources.swift
//  WorkoutApp
//
//  Created by Alexander Kim on 03.04.2023.
//

import UIKit

enum Res {
    
    enum Colours {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        
        static let separator = UIColor(hexString: "#E8ECEF")
        static let background = UIColor(hexString: "#F8F9F9")
        static let secondary = UIColor(hexString: "#F0F3FF")
        
        static let titleGray = UIColor(hexString: "#545C77")
        

    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
            
        }
        
        enum NavBar {
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
        
        enum Overview {
            static let allWorkoutsButton = "All Workouts"
        }
        
        enum Session {
            static let navBarStart = "Start   "
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Time"
            static let remainingTime = "Remaining Time"
            static let remaining = "Remaining"
            static let completed = "Completed"
            
            static let workoutStats = "WORKOUT STATS"
            static let averagePace = "AVERAGE PACE"
            static let heartRate = "HEART RATE"
            static let totalDistance = "TOTAL DISTANCE"
            static let totalSteps = "TOTAL STEPS"
            
            static let stepsCounter = "STEPS COUNTER"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
            
            static let last7Days = "Last 7 days"
            static let last10Month = "LAST 10 MONTH"
            
            static let dailyPerformance = "Daily Performance"
            static let monthlyPerformance = "Monthly Performance"
        }
        
        enum Settings {
            
        }
        
        
    }
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview_tab")
                case .session: return UIImage(named: "session_tab")
                case .progress: return UIImage(named: "progress_tab")
                case .settings: return UIImage(named: "settings_tab")
                }
            }
            
        }
        
        enum Overview {
            static let rightArrow = UIImage(named: "right_arrow")
            static let checkmarkDone = UIImage(named: "checkmark_done")
            static let checkmarkNot = UIImage(named: "checkmark_not")
        }
        
        enum Session {
            static let averagePace = UIImage(named: "stats_averagePace")
            static let heartRate = UIImage(named: "stats_heartRate")
            static let totalDistance = UIImage(named: "stats_totalDistance")
            static let totalSteps = UIImage(named: "stats_totalSteps")
        }
        
        enum Common {
            static let downArrow = UIImage(named: "down_arrow")
            static let add = UIImage(named: "add_button")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
