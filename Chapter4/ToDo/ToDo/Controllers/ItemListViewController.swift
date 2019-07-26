//
//  ItemListViewController.swift
//  ToDo
//
//  Created by Larry Bulen on 7/25/19.
//  Copyright © 2019 Larry Bulen. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate)!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
    }

}
