//
//  NoticeViewController.swift
//  AdvancCleanMVCiOS
//
//  Created by Anamika Deb on 20/10/20.
//  Copyright © 2020 Anamika Deb. All rights reserved.
//

import UIKit

class NoticeViewController: UIViewController, StoryboardInitable {
    //MARK: IBOUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    
    static var storyboardName: String = "Notice"
    

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }
    
    // MARK: - Private methods
    private func setupTableView() {
        tableView.delegate = self
        print("NOTIceCELL: \(NoticeCell.id)")
        tableView.register(NoticeCell.cellNib, forCellReuseIdentifier: NoticeCell.id)
    }
}

extension NoticeViewController : UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NoticeCell.id, for: indexPath) as! NoticeCell

        return cell
    }
    
    
}
