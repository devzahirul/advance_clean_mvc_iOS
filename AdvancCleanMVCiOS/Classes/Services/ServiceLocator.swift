//
//  ServiceLocator.swift
//  AdvancCleanMVCiOS
//
//  Created by Islam Md. Zahirul on 19/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import Foundation


// Class for store Service instance into a Dictionary
//
// When app launch, we will create app commonly using services instance
// sothat we can use from here
//
// Two generice methods for store and return services
public class ServiceLocator: NSObject {
    
    // MARK: - Propertices
    
    // A dictonary for store Service instance
    // Key is Service class Name
    // Value is service instance
    private var registry: [String: Any] = [:]
    
    // Create ServiceLocator default
    public override init() {
        
        // Call super cause inherited from NSObject
        super.init()
    }
}

// MARK: - Register service
extension ServiceLocator {
    
    // Store service instance in registry dictionary
    public func register<T>(service: T) {
        
        // Make key from Service class Name as String
        let key = "\(T.self)"
        
        // Store it into Dictionary
        registry[key] = service
    }
}


// MARK: - Get Servcie
extension ServiceLocator {
    
    // Return service instance from registry dictionary
    public func getService<T>() -> T {
        
        // Create key from Service class name
        let key = "\(T.self)"
        
        // Return value as Targeed Service using key
        // If nil, it will crash 
        return registry[key] as! T
    }
}
