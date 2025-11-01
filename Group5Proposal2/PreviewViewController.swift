//
//  PreviewViewController.swift
//  Group5Proposal2
//
//  Created by Ross Knight on 10/31/25.
//

import UIKit

class PreviewViewController: UIViewController {
    var indexPath: IndexPath?
    
    @IBOutlet weak var previewView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        previewView.layer.cornerRadius = 10
        guard let ip = indexPath else {
            return
        }
    }
}
