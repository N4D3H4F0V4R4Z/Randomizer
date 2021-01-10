//
//  AppDelegate.swift
//  Randomizer
//
//  Created by Наджафов Араз on 10.01.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // - UI
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("Приложение загрузилось!")
        return true
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        switch userActivity.activityType {
        case UserActivityType.generateRandomNumber.rawValue:
            if let viewController = window?.rootViewController as? RandomizerViewController {
                viewController.randomNumberGenerate()
            }
        default:
            break
        }
        
        return true
    }

}

