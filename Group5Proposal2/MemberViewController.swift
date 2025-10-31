//
//  MemberViewController.swift
//  Group5Proposal2
//
//  Created by Ross Knight on 10/31/25.
//

import UIKit

class MemberViewController: UIViewController {
    var memberName: String?
    var memberRole: String?
    
    @IBOutlet weak var memberNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = memberName {
            memberNameLabel.text = name
        }
    }
}
