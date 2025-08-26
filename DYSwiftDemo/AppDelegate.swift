//
//  AppDelegate.swift
//  DYSwiftDemo
//
//  Created by Jiankai Lei on 2025/8/20.
//

import UIKit
import Photos

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let mainTabBarVC = MainTabBarViewController()
        window?.rootViewController = mainTabBarVC
        window?.makeKeyAndVisible()
        
//        self.requestPermission()
        
        
        return true
    }

}

extension AppDelegate {
    func requestPermission() {
        PHPhotoLibrary.requestAuthorization(for: .readWrite) { PHAuthorizationStatus in
            // process photo access status
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        guard let touch = event?.allTouches?.first,
              let window = self.window else {
            return
        }
        let touchLocation = touch.location(in: window)
        
        let statusbarFrame = UIApplication.shared.statusBarFrame
        
        if statusbarFrame.contains(touchLocation) {
            NotificationCenter.default.post(name: NSNotification.Name("StatusBarTouchBeginNotification"), object: nil)
        }
        
        
    }
}

