//
//  AppDelegate.swift
//  UIWindowDemo
//
//  Created by Trista on 2021/2/9.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //在AppDelegate類別中的func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool方法中手動加上新增頁面
        //執行的時間點在應用程式啟動後
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //建立一個 UIWindow ，用來顯示應用程式所有畫面的視窗
        //iOS下只會有一個視窗，就是self.window
        self.window = UIWindow(frame:UIScreen.main.bounds)
   
        //設置底色
        self.window!.backgroundColor = UIColor.white
         
                
        //設置rootViewController，也就是應用程式啟動後進到的第一個View 所處的ViewController，也可以依照需求設置成自己另外建立的 UIViewController
        self.window!.rootViewController = ViewController();
         
                
        //將 UIWindow 以makeKeyAndVisible()方法設置為可見的，完成手動建立頁面
        self.window!.makeKeyAndVisible()

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

