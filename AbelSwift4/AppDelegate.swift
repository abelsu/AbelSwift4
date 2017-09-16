//
//  AppDelegate.swift
//  AbelSwift4
//
//  Created by abelsu on 2017/9/16.
//  Copyright © 2017年 abelsu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Thread.sleep(forTimeInterval: 3.0); //设置页面启动时间
        //application.setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone/启动页面图片全屏
        //application.setStatusBarHidden(false,with:UIStatusBarAnimation.none);
        
        // 启动页面全屏后状态栏还原
        var prefersStatusBarHidden: Bool {
            return false
        }
        //使用下一句时状态栏文字变白色，首先在Info.plist中设置UIViewControllerBasedStatusBarAppearance 为NO
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        
        //0.
        self.window = UIWindow(frame:UIScreen.main.bounds);
        self.window!.backgroundColor = UIColor.white
        
        //1.
        let VC1 = HomeViewController()
        let nav1 = UINavigationController(rootViewController: VC1)
        let VC2 = DoorViewController()
        let nav2 = UINavigationController(rootViewController: VC2)
        let VC3 = ShopViewController()
        let nav3 = UINavigationController(rootViewController: VC3)
        let VC4 = MineViewController()
        let nav4 = UINavigationController(rootViewController: VC4)
        let VC5 = MoreViewController()
        let nav5 = UINavigationController(rootViewController: VC5)
        
        //2.
        let navArrs = [nav1,nav2,nav3,nav4,nav5]
        //3.
        //4.
        //5.
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // Override point for customization after application launch.
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

