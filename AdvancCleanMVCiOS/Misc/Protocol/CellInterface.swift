//
//  CellInterface.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 20/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

protocol CellInterface {

    static var id: String { get }
    static var cellNib: UINib { get }

}

extension CellInterface {

    static var id: String {
        let identifier = String.init(describing: self)

        return identifier
    }

    static var cellNib: UINib {
        return UINib(nibName: id, bundle: nil)
    }

}
