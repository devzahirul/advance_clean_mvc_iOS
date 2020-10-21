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
    
    override init() {
        super.init()
        delegate?.noticeListAdapterRequestedViewUpdate(adapter: self)
    }
}

extension NoticeListAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NoticeCell.id, for: indexPath) as! NoticeCell

        return cell
    }
}
