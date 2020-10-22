//
//  NoticeDetailsViewController.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 22/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

class NoticeDetailsViewController: UIViewController, StoryboardInitable {
    
    static var storyboardName: String = "NoticeDetails"
    var notice: NoticeModel? = nil
    
    @IBOutlet weak var companyNameLbl: UILabel!
    @IBOutlet weak var noticeNameLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var noticeTypeLbl: UILabel!
    @IBOutlet weak var noticeDescriptionLbl: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Private methods
    private func setupView() {
        companyNameLbl.text = notice?.companyName
        noticeNameLbl.text = notice?.noticeName
        dateLbl.text = notice?.createDate
        noticeTypeLbl.text = notice?.noticeCategory
        noticeDescriptionLbl.text = notice?.description
    }
    
    //MARK: IBACTION
    @IBAction func clickedBackButton(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
}
