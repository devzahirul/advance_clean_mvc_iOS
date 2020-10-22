//
//  SigninRouter.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 20/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

class SigninRouter: NoticeListPresenter {
    var currentViewController: UIViewController!
    
    var serviceLocator: ServiceLocator!
    
    
    init(serviceLocator: ServiceLocator) {
        //init service
        self.serviceLocator = serviceLocator
    }
    
}

extension SigninRouter : Router{
    // Create & show signin view
    func execute(context: UIViewController, info: AnyObject?) {
        
        //check your opening logic
        //setup router
        let signVC = SigninViewController.create()
        signVC.modalPresentationStyle = .fullScreen
        signVC.setRouter(router: self)
        currentViewController = signVC
        context.present(signVC, animated: false, completion: nil)
    }
}
