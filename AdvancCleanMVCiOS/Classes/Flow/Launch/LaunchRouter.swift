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
        let viewController = LaunchViewController.create()
        viewController.setRouter(router: self)
        let navController = UINavigationController.init(rootViewController: viewController)
        navController.navigationBar.isHidden = true
        
        currentViewController = navController
        
        context.rootViewController = navController
    }
}
