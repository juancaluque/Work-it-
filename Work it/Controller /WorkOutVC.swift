//
//  ViewController.swift
//  Work it
//
//  Created by Juan Luque on 1/24/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class WorkOutVC: UIViewController {

    // OUTLETS
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableLbl: RoundedLabel!
    
    // VARIBLES
    var imagesUrlArray : [String] = ["https://live.staticflickr.com/718/21492946401_5204cf07d4_z_d.jpg", "https://live.staticflickr.com/3708/9630224670_1ba1ac7887_d.jpg"]
    var imagesArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // FUNC
    
    func retrieveImages(completion: @escaping (_ success: Bool)-> ()) {
        for url in imagesUrlArray {
            Alamofire.request(url).responseImage { (response) in
                guard let image = response.result.value else { return }
                self.imagesArray.append(image)
                completion(true)
            }
        }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TypeCell") as? TypeCell else { return }
        let cellTitle = cell.typeOfWorkOut[indexPath.row] 
        
        guard let excerciseVC = storyboard?.instantiateViewController(identifier: "ExcerciseVC") as? ExcerciseVC else { return }
        
        excerciseVC.initData(title: cellTitle)
        
        present(excerciseVC, animated: true, completion: nil)
    }
    
}

