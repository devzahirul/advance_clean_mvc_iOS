//
//  Presenter.swift
//  AdvancCleanMVCiOS
//
//  Created by Islam Md. Zahirul on 19/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

// Used for presend ViewController
protocol Router: class {
    associatedtype Context
    func execute(context: Context)
}

// Used for handle navigation
// -- Example
// NoticeListViewController present/ navigation for NoticeDetailViewController
//
//
@objc protocol PresenterType {
    weak var currentViewController: UIViewController! {get}
    weak var serviceLocator: ServiceLocator! {get}
}


// SignIn Presenter
// means signin navigation
// How many way other view want to show signin view
protocol SignInPresenter: PresenterType {
    func showSigin()
    
}

// Default implementation of SignInPresenter
extension SignInPresenter {
    func showSigin(){
        let signinRouter = SigninRouter()
        signinRouter.execute(context: currentViewController)
    }
}


// Add how many way need to show NoticeListViewController
protocol NoticeListPresenter: PresenterType {
    func showNoticeList()
}

// Default implementation
extension NoticeListPresenter {
    func showNoticeList(){
        let noticeRouter = NoticeRouter()
        noticeRouter.execute(context: currentViewController)
    }
}

// Add how many way can present noticeDetailController
// NoticeDetail with notice id
// NoticeDetail with noticeMode
protocol NoticeDetailPresenter: PresenterType {
    func showNoticeDetail(with noticeId: Int)
    func showNoticeDetail(with noticeId: String)
}


// Default implementation of NoticeDetailPresenter 
extension NoticeDetailPresenter {
    func showNoticeDetail(with noticeId: Int){}
    func showNoticeDetail(with noticeId: String){}
}
