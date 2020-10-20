//
//  SigninViewController.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 20/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController, StoryboardInitable {
    
    //MARK: IBOUTLETS
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    static var storyboardName: String = "Signin"
    
    //MARK: IBACTIONS
    @IBAction func clickedSigninButton(_ sender: Any) {
    }
}
