//
//  TableViewController.swift
//  UITableViewCellAnimation
//
//  Created by Kamil Burczyk on 07.04.2017.
//  Copyright © 2017 Kamil Burczyk. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 124
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        cell.delegate = self
        return cell
    }

}

extension TableViewController: CellDelegate {
    func contentDidChange(cell: Cell) {
        UIView.animate(withDuration: 1) {
            self.tableView.beginUpdates()
            self.tableView.endUpdates()
        }
    }
}
