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
    let noticeName: String
    let description: String
    let isNew: Bool
    let createDate: String
    let hasPdf: Bool
    let noticeCategory: String
    
    static func getTestingData() -> [NoticeModel] {
        var data = [NoticeModel]()
        
        // Create few demo notuce
        let n1 = NoticeModel.init(companyName: "ABCD_1",
                                  noticeName: "Notice_1",
                                  description: "Notice_1_Description",
                                  isNew: true,
                                  createDate: "20/10/2020",
                                  hasPdf: true,
                                  noticeCategory:"Monthly Report")
        let n2 = NoticeModel.init(companyName: "ABCD_2",
                                  noticeName: "Notice_2",
                                  description: "Notice_2_Description",
                                  isNew: false,
                                  createDate: "19/10/2020",
                                  hasPdf: false,
                                  noticeCategory:"Cleaning Report")
        
        let n3 = NoticeModel.init(companyName: "ABCD_3",
                                  noticeName: "Notice_3",
                                  description: "Notice_3_Description",
                                  isNew: false,
                                  createDate: "21/10/2020",
                                  hasPdf: false,
                                  noticeCategory:"Monthly Report")
        let n4 = NoticeModel.init(companyName: "ABCD_4",
                                  noticeName: "Notice_4",
                                  description: "Notice_4_Description",
                                  isNew: false,
                                  createDate: "21/10/2020",
                                  hasPdf: true,
                                  noticeCategory:"Cleaning Report")
        // Append into data Array
        data.append(contentsOf: [n1,n2,n3,n4])
        data.append(contentsOf: [n1,n2,n3,n4])
        data.append(contentsOf: [n1,n2,n3,n4])
        data.append(contentsOf: [n1,n2,n3,n4])
        
        // Return the data Array of NoticeModel
        return data
    }
}
