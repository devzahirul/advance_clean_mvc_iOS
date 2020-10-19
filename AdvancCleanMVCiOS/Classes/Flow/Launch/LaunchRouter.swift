//
//  LaunchRouter.swift
//  AdvancCleanMVCiOS
//
//  Created by Islam Md. Zahirul on 19/10/20.
//

import UIKit


class LaunchRouter: SignInPresenter, NoticeListPresenter {
    var currentViewController: UIViewController!
    
    var serviceLocator: ServiceLocator!
    
    
    init() {
        //init service
        serviceLocator = ServiceLocator.init()
    }
    
}

extension LaunchRouter: Router {
    func execute(context: UIWindow) {
        
        //check your opening logic
        //setup router
        
        let navController = UINavigationController.init(rootViewController: LaunchViewController.create())
        navController.navigationBar.isHidden = true
        
        currentViewController = navController
        
        context.rootViewController = navController
    }
}
