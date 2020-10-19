//
//  StoryboardInitable.swift
//  AdvancCleanMVCiOS
//
//  Created by Islam Md. Zahirul on 19/10/20.
//

import UIKit

protocol StoryboardInitable {
    static var storyboardName: String {get}
    static func create() -> Self
}

extension StoryboardInitable {
    static func create() -> Self {
        let identifier = String.init(describing: self)
        return UIStoryboard.init(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: identifier) as! Self
    }
}
