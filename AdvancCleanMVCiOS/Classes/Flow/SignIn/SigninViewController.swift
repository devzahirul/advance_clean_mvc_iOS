//
//  SigninViewController.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 20/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

typealias SigninRouterInterface = NoticeListPresenter

class SigninViewController: UIViewController, StoryboardInitable {
    
    //MARK: IBOUTLETS
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    static var storyboardName: String = "Signin"
    private var router: SigninRouterInterface!
    
    //MARK: IBACTIONS
    @IBAction func clickedSigninButton(_ sender: Any) {
//        noticeRouter.execute(context: self)
        router.showNoticeList()
    }
    
    // Setup Methods
    func setRouter(router: SigninRouterInterface) {
        //set router
        self.router = router
    }
}
