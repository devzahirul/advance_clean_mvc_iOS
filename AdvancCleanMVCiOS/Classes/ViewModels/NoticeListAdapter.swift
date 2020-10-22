//
//  NoticeListAdapter.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 21/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import Foundation
import UIKit

// MARK: - NoticeListAdapter Delegate

// Delegate for notify Controller that data
// is available in Adapter
protocol NoticeListAdapterDelegate: class {
    func noticeListAdapterRequestedViewUpdate(adapter: NoticeListAdapter)
}


// MARK: - NoticeListAdapter class

// An implementation of UITableViewDataSource
// Handle data indepedently
// Seperated from ViewController
// Easy for testing
public class NoticeListAdapter: NSObject {
    
    // MARK: - Propertices
    
    // Adapter delegate
    // Is Used for Call delegate method when needed
    weak var delegate: NoticeListAdapterDelegate?
    
    // noticeList is an Array of NoticeModel struct
    // Added didSet observer which will be called when value changed
    private var noticeList = NoticeModel.getTestingData(){
        didSet {
            // Call delegate method for notifying that data is available
            // It used for reload UITableView
            delegate?.noticeListAdapterRequestedViewUpdate(adapter: self)
        }
    }
    
    // Return totoal notice in Array
    private var noticeListQuantity: Int {
        return noticeList.count
    }
}


// MARK: - instance methods
extension NoticeListAdapter {
    
    // Return notice model based on IndexPath row
    public func getNoticeList(atIndexPath indexPath: NSIndexPath) -> NoticeModel {
        return noticeList[indexPath.row]
    }
}


// MARK: - UITableViewDataSource
extension NoticeListAdapter: UITableViewDataSource {
    
    // DataSource method for return number of cell into Section
    // By default 1 section
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return noticeList counter
        // Number of call is equal to number of item into noticeList
        // noticeList is an array
        return noticeListQuantity
    }
    
    // DataSource method for return Cell
    // Where will add model data into Cell
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Return cell from dequeue based on Registered cell
        let cell = tableView.dequeueReusableCell(withIdentifier: NoticeCell.id, for: indexPath) as! NoticeCell
        
        // Return notice model based on IndexPath row
        let notice = getNoticeList(atIndexPath: indexPath as NSIndexPath)
        
        // Call for setup notice model data into CellUI
        cell.configure(notice: notice)
        
        // Return notice Cell as UITableviewCell
        return cell
    }
}
