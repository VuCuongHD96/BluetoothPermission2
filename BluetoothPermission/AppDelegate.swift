//
//  AppDelegate.swift
//  BluetoothPermission
//
//  Created by Sun on 26/05/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       print( getData(from: "Job"))
        return true
    }
    
    private func getData(from listName: String) -> Dictionary<String, String> {
        guard let path = Bundle.main.path(forResource: listName, ofType: "plist"),
            let categoryDictionary = NSDictionary(contentsOfFile: path) as? [String : String] else {
                return [String : String]()
        }
        return categoryDictionary
    }
}

