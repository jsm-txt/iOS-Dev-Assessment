//
//  TableViewController.swift
//  iOS-Dev-Assessment
//
//  Created by Jose Salazar Mendez on 5/11/22.
//

import Foundation
import UIKit

class TableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var itemList = [
        Item(name: "Elon Musk", description: "Richest in the World"),
        Item(name: "Elon Musk", description: "Richest in the World"),
        Item(name: "Elon Musk", description: "Richest in the World"),
        Item(name: "Elon Musk", description: "Richest in the World")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self


    }
    
}

extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = itemList[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
}

extension TableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        let vc = storyboard?.instantiateViewController(withIdentifier: "details") as! ItemDetailsViewController
        navigationController?.pushViewController(vc, animated: true)
//        vc.userDesc = userList[indexPath.row].description
        vc.detail = itemList[indexPath.row].description
            
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
