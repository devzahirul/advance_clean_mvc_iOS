//
//  Notice.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 21/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import Foundation

// A NoticeModel struct represent a Data Transfer mode object
// which is used for data as Collection Item
// Simple test data added

public struct NoticeModel {
    
    // MARK: - Propertices
    
    // Company names used as notice creator name
    public let companyName: String
    
    //  Simple descrition of the notice
    public let description: String
    
    // Flag for making  notice is readed by App user
    // If isNew true , in TableViewCell/ CollectionView cell , add a 'NEW'
    // label , sothat User can understand , this notice is newly created
    public let isNew: Bool
    
    // Date for when notice is created
    public let createDate: String
    
    // Notice can have one / many pdf file as attachment
    // Flag for identify that this notice has pdf attachment
    // It will help when open details
    public let hasPdf: Bool
    
    // A simpe String to group the notice into few categories
    // Help in if we use filterring
    // Can help in Searching and mark easilty that group of notice
    public let noticeCategory: String
    
    
    // MARK:- Test Data
    
    // Return an Array of NoticeModel
    public static func getTestingData() -> [NoticeModel] {
        // create an array which will return
        var data = [NoticeModel]()
        
        // Create few demo notuce
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
        // Append into data Array
        data.append(contentsOf: [n1,n2,n3,n4])
        data.append(contentsOf: [n1,n2,n3,n4])
        data.append(contentsOf: [n1,n2,n3,n4])
        data.append(contentsOf: [n1,n2,n3,n4])
        
        // Return the data Array of NoticeModel
        return data
    }
}
