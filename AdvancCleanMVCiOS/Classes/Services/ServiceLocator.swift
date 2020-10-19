//
//  ServiceLocator.swift
//  AdvancCleanMVCiOS
//
//  Created by Islam Md. Zahirul on 19/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import Foundation


public class ServiceLocator: NSObject {
    private var registry: [String: Any] = [:]
    
    public override init() {
        super.init()
    }
    
    public func register<T>(service: T) {
        let key = "\(T.self)"
        registry[key] = service
    }
    
    
    public func getService<T>() -> T {
        
        let key = "\(T.self)"
        
        return registry[key] as! T
    }
    
  
}
