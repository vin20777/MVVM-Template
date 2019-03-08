//
//  AppDelegate.swift
//  MVVMTemplate
//
//  Created by VTStudio on 3/6/19.
//  Copyright © 2019 VTStudio. All rights reserved.
//
//  VTStudio built the MVVMTemplate app as an Open Source app. This SERVICE is provided by
//  VTStudio at no cost and is intended for use as is.
//
//  This page is used to inform visitors regarding our policies with the collection, use,
//  and disclosure of Personal Information if anyone decided to use our Service.
//  If you choose to use our Service, then you agree to the collection and use of information
//  in relation to this policy. The Personal Information that we collect is used for providing
//  and improving the Service. We will not use or share your information with anyone except as
//  described in this Privacy Policy.
//
//  The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions,
//  which is accessible at MVVMTemplate unless otherwise defined in this Privacy Policy.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
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

