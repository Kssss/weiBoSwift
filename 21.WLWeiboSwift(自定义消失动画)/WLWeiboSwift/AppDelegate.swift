//
//  AppDelegate.swift
//  WLWeiboSwift
//
//  Created by 单车 on 2019/7/19.
//  Copyright © 2019 单车. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var defaultViewController : UIViewController?{
        let  isLogin = UserAccountViewModel.shareInstance.isLogin
//        let isLogin = true
        return isLogin ? WelcomeViewController() : UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        
    }
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        ///设置Tabbar全局颜色
        UITabBar.appearance().tintColor = UIColor.orange

        ///设置NavBar全局颜色
        UINavigationBar.appearance().tintColor = UIColor.orange
        
        //创建window
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = defaultViewController
        window?.makeKeyAndVisible()
        return true
    }

}

