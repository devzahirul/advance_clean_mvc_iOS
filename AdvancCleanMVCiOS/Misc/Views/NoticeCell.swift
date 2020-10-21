//
//  NoticeCell.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 20/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

class NoticeCell: UITableViewCell, CellInterface {
    
    @IBOutlet weak var companyNameLbl: UILabel!
    @IBOutlet weak var noticeDescriptionLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var noticeTypeLbl: UILabel!
    
    func configure(notice: NoticeModel){
        companyNameLbl.text = notice.companyName
        noticeDescriptionLbl.text = notice.description
        dateLbl.text = notice.createDate
        noticeTypeLbl.text = notice.noticeCategory
    }
}
