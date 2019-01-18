//
//  AppDelegate.swift
//  wechartpage
//
//  Created by mac on 2019/1/8.
//  Copyright © 2019 henry. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //设置导航的controller
        let UnserNav = UINavigationController(rootViewController: UnserInfoViewController())
        let homeNav = UINavigationController(rootViewController: HomeViewController())
        let nameNav = UINavigationController(rootViewController: NameViewController())
        let lookNav = UINavigationController(rootViewController: LookedViewController())
        //每个导航显示的名称
        UnserNav.tabBarItem.title = NSLocalizedString("homeMe", comment: "")
        nameNav.tabBarItem.title = NSLocalizedString("iphoneNumber", comment: "")
        lookNav.tabBarItem.title = NSLocalizedString("findOption", comment: "")
        homeNav.tabBarItem.title = NSLocalizedString("Wechart", comment: "")
        
        //给导航添加图片
        UnserNav.tabBarItem.image = UIImage(named: "userinfo")
        nameNav.tabBarItem.image = UIImage(named: "tongxunlu")
        lookNav.tabBarItem.image = UIImage(named: "faxian")
        homeNav.tabBarItem.image = UIImage(named: "home")
        lookNav.tabBarItem.badgeValue="100"
        homeNav.tabBarItem.badgeValue = "10"
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [homeNav,nameNav,lookNav, UnserNav]
        
        self.window?.rootViewController = tabBarController
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

