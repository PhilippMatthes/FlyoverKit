//
//  AppDelegate.swift
//  FlyoverKit-Example
//
//  Created by Sven Tiigi on 22.04.18.
//  Copyright © 2018 FlyoverKit. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    /// The UINavigationController with ViewController as root
    lazy private var navigationController: UINavigationController = {
        let navigationController = UINavigationController(rootViewController: ViewController())
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.navigationBar.largeTitleTextAttributes = [
            .foregroundColor: UIColor.main
        ]
        navigationController.view.backgroundColor = .white
        navigationController.navigationBar.tintColor = .main
        navigationController.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.main
        ]
        return navigationController
    }()
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self.navigationController
        self.window?.makeKeyAndVisible()
        return true
    }
    
}
