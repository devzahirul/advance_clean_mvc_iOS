//
//  LaunchViewController.swift
//  AdvancCleanMVCiOS
//
//  Created by Islam Md. Zahirul on 19/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController, StoryboardInitable {
    static var storyboardName: String = "Launch"
    
    private lazy var signinRouter = SigninRouter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Add logic for view represent
        signinRouter.execute(context: self)
    }
}
