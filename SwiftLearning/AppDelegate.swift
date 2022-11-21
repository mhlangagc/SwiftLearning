//
//  AppDelegate.swift
//  SwiftLearning
//
//  Created by Gugulethu Mhlanga on 2022/11/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var setupBaseRouting: UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        window.tintColor = UIColor.red
        window.rootViewController = UINavigationController(rootViewController: HomeViewController())
        return window
    }
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = setupBaseRouting
        return true
    }
}

