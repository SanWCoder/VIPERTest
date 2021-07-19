//
//  AppDelegate.swift
//  VIPERTest
//
//  Created by SanW on 2021/7/13.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow.init(frame: UIScreen.main.bounds)
        let vc = VRHomePageViewController.init()
        let nav = UINavigationController.init(rootViewController: vc)
        VRHomePageBuilder.buildView(view: vc, Interactor: VRHomePageInteractor.init(), router: VRRouter.init())
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        return true
    }
}

