//
//  NoticeDetailsRouter.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 22/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

class NoticeDetailsRouter: NoticeListPresenter {
    var currentViewController: UIViewController!
    
    var serviceLocator: ServiceLocator!
    
    
    init() {
        //init service
        serviceLocator = ServiceLocator.init()
    }
    
}

extension NoticeDetailsRouter : Router{
    // Create & show signin view
    func execute(context: UIViewController, info: AnyObject?) {
        
        //check your opening logic
        //setup router
        let noticeVC = NoticeDetailsViewController.create()
        noticeVC.modalPresentationStyle = .fullScreen
        noticeVC.notice = info as? NoticeModel
//        noticeVC.setRouter(router: self)
        currentViewController = noticeVC
        context.present(noticeVC, animated: false, completion: nil)
    }
}
