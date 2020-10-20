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
    
    var serviceLocator: ServiceLocator!
    
    
    init() {
        //init service
        serviceLocator = ServiceLocator.init()
    }
    
}

extension NoticeRouter : Router{
    // Create & show signin view
    func execute(context: UIViewController) {
        
        //check your opening logic
        //setup router
        let noticeVC = NoticeViewController.create()
        noticeVC.modalPresentationStyle = .fullScreen
        context.present(noticeVC, animated: false, completion: nil)
    }
}


