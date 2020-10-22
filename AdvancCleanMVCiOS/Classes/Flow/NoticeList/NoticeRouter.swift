//
//  NoticeRouter.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 20/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

class NoticeRouter: NoticeDetailPresenter {
    var currentViewController: UIViewController!
    
    private(set) var serviceLocator: ServiceLocator!
    
    
    init(serviceLocator: ServiceLocator) {
        self.serviceLocator = serviceLocator
    }
    
}

extension NoticeRouter : Router{
    // Create & show signin view
    func execute(context: UIViewController, info: AnyObject?) {
        
        //check your opening logic
        //setup router
        let noticeVC = NoticeViewController.create()
        noticeVC.modalPresentationStyle = .fullScreen
        noticeVC.setRouter(router: self)
        noticeVC.setServiceLocator(serviceLocator: self.serviceLocator)
        currentViewController = noticeVC
        context.present(noticeVC, animated: false, completion: nil)
    }
}


