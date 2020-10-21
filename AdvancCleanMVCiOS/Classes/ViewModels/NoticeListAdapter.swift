//
//  NoticeListAdapter.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 21/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import Foundation
import UIKit

protocol NoticeListAdapterDelegate: class {

    func noticeListAdapterRequestedViewUpdate(adapter: NoticeListAdapter)

}

class NoticeListAdapter: NSObject {
    weak var delegate: NoticeListAdapterDelegate?
    
    private var noticeList = NoticeModel.getTestingData(){
        didSet {
            delegate?.noticeListAdapterRequestedViewUpdate(adapter: self)
        }
    }
    
    var noticeListQuantity: Int {
        return noticeList.count
    }
    
    func getNoticeList(atIndexPath indexPath: NSIndexPath) -> NoticeModel {
        return noticeList[indexPath.row]
    }
}

extension NoticeListAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noticeListQuantity
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NoticeCell.id, for: indexPath) as! NoticeCell
        let notice = getNoticeList(atIndexPath: indexPath as NSIndexPath)
        cell.configure(notice: notice)
        return cell
    }
}
