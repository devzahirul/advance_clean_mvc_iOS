//
//  OCBFirebaseAnalytics.swift
//  AdvancCleanMVCiOS
//
//  Created by macmini on 11/2/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import Foundation
import Firebase

final class FirebaseManager {
    
    static let shared = FirebaseManager()
    
    static func sendAnalytics(eventName: String, params: [String : Any]?) {
        Analytics.logEvent(eventName, parameters: params)
    }
    
    func sendAnalytics(eventName: String, params: [String : Any]?) {
        Analytics.logEvent(eventName, parameters: params)
    }
}
