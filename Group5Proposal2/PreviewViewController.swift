//
//  PreviewViewController.swift
//  Group5Proposal2
//
//  Created by Ross Knight on 10/31/25.
//

import UIKit

class PreviewViewController: UIViewController {
    var indexPath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let ip = indexPath else {
            return
        }
    }
}
