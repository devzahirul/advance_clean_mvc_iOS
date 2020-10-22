//
//  Presenter.swift
//  AdvancCleanMVCiOS
//
//  Created by Islam Md. Zahirul on 19/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit


protocol Router: class {
    associatedtype Context
    func execute(context: Context, info: AnyObject?)
}

@objc protocol PresenterType {
    weak var currentViewController: UIViewController! {get}
    weak var serviceLocator: ServiceLocator! {get}
}


protocol SignInPresenter: PresenterType {
    func showSigin()
    
}

extension SignInPresenter {
    func showSigin(){
        let signinRouter = SigninRouter()
        signinRouter.execute(context: currentViewController, info: nil)
    }
}


protocol NoticeListPresenter: PresenterType {
    func showNoticeList()
}

extension NoticeListPresenter {
    func showNoticeList(){
        let noticeRouter = NoticeRouter()
        noticeRouter.execute(context: currentViewController, info: nil)
    }
}

protocol NoticeDetailPresenter: PresenterType {
    func showNoticeDetail(with noticeId: Int)
    func showNoticeDetail(with noticeId: String)
    func showNoticeDetail(with notice: NoticeModel)
}


extension NoticeDetailPresenter {
    func showNoticeDetail(with noticeId: Int){}
    func showNoticeDetail(with noticeId: String){}
    func showNoticeDetail(with notice: NoticeModel){
        let noticeRouter = NoticeDetailsRouter()
        noticeRouter.execute(context: currentViewController, info: notice as AnyObject)
    }
}
