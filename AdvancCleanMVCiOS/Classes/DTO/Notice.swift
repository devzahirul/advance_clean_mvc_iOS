//
//  Notice.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 21/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import Foundation

struct NoticeModel {
    let companyName: String
    let description: String
    let isNew: Bool
    let createDate: String
    let hasPdf: Bool
    let noticeCategory: String
    
    static func getTestingData() -> [NoticeModel] {
        var data = [NoticeModel]()
        let n1 = NoticeModel.init(companyName: "ABCD_1",
                                  description: "Notice_1",
                                  isNew: true,
                                  createDate: "20/10/2020",
                                  hasPdf: true,
                                  noticeCategory:"Monthly Report")
        let n2 = NoticeModel.init(companyName: "ABCD_2",
                                  description: "Notice_2",
                                  isNew: false,
                                  createDate: "19/10/2020",
                                  hasPdf: false,
                                  noticeCategory:"Cleaning Report")
        
        let n3 = NoticeModel.init(companyName: "ABCD_3",
                                  description: "Notice_3",
                                  isNew: false,
                                  createDate: "21/10/2020",
                                  hasPdf: false,
                                  noticeCategory:"Monthly Report")
        let n4 = NoticeModel.init(companyName: "ABCD_4",
                                  description: "Notice_4",
                                  isNew: false,
                                  createDate: "21/10/2020",
                                  hasPdf: true,
                                  noticeCategory:"Cleaning Report")
        
        data.append(contentsOf: [n1,n2,n3,n4])
        data.append(contentsOf: [n1,n2,n3,n4])
        data.append(contentsOf: [n1,n2,n3,n4])
        data.append(contentsOf: [n1,n2,n3,n4])
        return data
    }
}
