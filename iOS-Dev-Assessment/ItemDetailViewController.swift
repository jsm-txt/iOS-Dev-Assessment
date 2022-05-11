//
//  ItemDetailViewController.swift
//  iOS-Dev-Assessment
//
//  Created by Jose Salazar Mendez on 5/11/22.
//

import Foundation
import UIKit

class ItemDetailsViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    var detail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = detail
    }
}
