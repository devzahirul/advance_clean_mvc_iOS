//
//  LaunchViewController.swift
//  AdvancCleanMVCiOS
//
//  Created by Islam Md. Zahirul on 19/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

typealias LaunchRouterInterface = SignInPresenter

class LaunchViewController: UIViewController, StoryboardInitable {
    static var storyboardName: String = "Launch"
    
    private var router: LaunchRouterInterface!
    
    // Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // Add logic for view represent
        router.showSigin()
    }
    
    // Setup Methods
    func setRouter(router: LaunchRouterInterface) {
        self.router = router
    }
}
