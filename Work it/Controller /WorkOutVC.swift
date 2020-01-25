//
//  ViewController.swift
//  Work it
//
//  Created by Juan Luque on 1/24/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

class WorkOutVC: UIViewController {

    // OUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension WorkOutVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TypeCell") as? TypeCell else { return UITableViewCell() }
        cell.configureCell(name: cell.typeOfWorkOut[indexPath.row])
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TypeCell") as? TypeCell else {  return 0 }
        let numberOfTypes = cell.typeOfWorkOut.count
        return numberOfTypes
    }
    
}

