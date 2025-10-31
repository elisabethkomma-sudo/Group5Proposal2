//
//  ComponentViewController.swift
//  Group5Proposal2
//
//  Created by Ross Knight on 10/31/25.
//

import UIKit

class ComponentViewController: UIViewController {
    var componentName: String?
    var componentFeatures: String?
    
    @IBOutlet weak var projectComponentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let component = componentName {
            projectComponentLabel.text = component
        }
    }
}
