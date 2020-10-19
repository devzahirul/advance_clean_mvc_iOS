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
    func execute(context: Context)
}

@objc protocol PresenterType {
    weak var currentViewController: UIViewController! {get}
    weak var serviceLocator: ServiceLocator! {get}
}


protocol SignInPresenter: PresenterType {
    func showSigin()
    
}

extension SignInPresenter {
    func showSigin(){}
}


protocol NoticeListPresenter: PresenterType {
    func showNoticeList()
}

extension NoticeListPresenter {
    func showNoticeList(){}
}

protocol NoticeDetailPresenter: PresenterType {
    func showNoticeDetail(with noticeId: Int)
    func showNoticeDetail(with noticeId: String)
}


extension NoticeDetailPresenter {
    func showNoticeDetail(with noticeId: Int){}
    func showNoticeDetail(with noticeId: String){}
}
