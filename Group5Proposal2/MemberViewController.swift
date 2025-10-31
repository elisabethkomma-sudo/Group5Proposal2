//
//  MemberViewController.swift
//  Group5Proposal2
//
//  Created by Ross Knight on 10/31/25.
//

import UIKit

class MemberViewController: UIViewController {
    var memberName: String?
    var indexPath: IndexPath?
    
    @IBOutlet weak var memberNameLabel: UILabel!
    @IBOutlet weak var memberRolesLabel: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let name = memberName else {
            return
        }
        
        guard let ip = indexPath else {
            return
        }
        
        memberNameLabel.text = name
        
        switch name {
        case "Elisabeth":
            memberRolesLabel.text = """
                - Create basic layout
                - Add detail to each view to make them visually appealing
                """
        case "Ross":
            memberRolesLabel.text = """
                - Write code for views
                - Test functionality and fix bugs for views
                """
        default:
            return
        }
    }
}
