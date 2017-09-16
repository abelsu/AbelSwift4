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
        UIApplication.shared.setStatusBarHidden(false, with: .none)//启动页面图片全屏,需要在Info.plist中将UIStatusBarHidden，值设为YES
        
      
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
        let tabBarController = UITabBarController()
        //4.
        tabBarController.viewControllers = navArrs
        //5.
        self.window!.rootViewController = tabBarController
        
        //6.
        let image1 = UIImage(named: "icon_tabbar_home")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let selectImage1 = UIImage(named: "icon_tabbar_home_selected")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let item1 = UITabBarItem(title: "首页", image: image1, selectedImage: selectImage1)
        //item1.imageInsets = UIEdgeInsetsMake(6,0,-6,0)
        nav1.tabBarItem = item1
        
        let image2 = UIImage(named: "icon_tabbar_door")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let selectImage2 = UIImage(named: "icon_tabbar_door_selected")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let item2 = UITabBarItem(title: "门户", image: image2, selectedImage: selectImage2)
        //item2.imageInsets = UIEdgeInsetsMake(6,0,-6,0)
        nav2.tabBarItem = item2
        
        let image3 = UIImage(named: "icon_tabbar_shop")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let selectImage3 = UIImage(named: "icon_tabbar_shop_selected")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let item3 = UITabBarItem(title: "商家", image: image3, selectedImage: selectImage3)
        //item3.imageInsets = UIEdgeInsetsMake(6,0,-6,0)
        nav3.tabBarItem = item3
        
        let image4 = UIImage(named: "icon_tabbar_mine")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let selectImage4 = UIImage(named: "icon_tabbar_mine_selected")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let item4 = UITabBarItem(title: "我的", image: image4, selectedImage: selectImage4)
        //item4.imageInsets = UIEdgeInsetsMake(6,0,-6,0)
        nav4.tabBarItem = item4
        
        let image5 = UIImage(named: "icon_tabbar_more")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let selectImage5 = UIImage(named: "icon_tabbar_more_selected")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let item5 = UITabBarItem(title: "更多", image: image5, selectedImage: selectImage5)
        //item5.imageInsets = UIEdgeInsetsMake(6,0,-6,0)
        nav5.tabBarItem = item5
        
        //改变选中的UITabBarItem字体颜色
        let attributes =  [NSAttributedStringKey.foregroundColor: UIColor(red: 0, green: 0.72, blue: 0.69, alpha: 1)]
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: UIControlState.selected)
        //未选中的字体颜色设置
        //UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.redColor()], forState: UIControlState.Normal)
        
        //设置导航栏字体颜色
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
        
        //7.
        self.window!.makeKeyAndVisible()//设置为主窗口并显示出来*/
        
        
        
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

