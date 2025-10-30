//
//  MemberViewController.swift
//  Group5Proposal2
//
//  Created by Ross Knight on 10/31/25.
//

import UIKit

class MemberViewController: UIViewController {
    var memberName: String??
    var memberRole: String??
    var memberNotes: String??
    
    @IBOutlet weak var memberNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let name = memberName {
            memberNameLabel.text = name
        }
    }
}
