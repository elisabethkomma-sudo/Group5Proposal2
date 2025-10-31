//
//  ComponentViewController.swift
//  Group5Proposal2
//
//  Created by Ross Knight on 10/31/25.
//

import UIKit

class ComponentViewController: UIViewController {
    var componentName: String?
    var indexPath: IndexPath?
    
    @IBOutlet weak var projectComponentLabel: UILabel!
    @IBOutlet weak var componentDetailsLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let component = componentName else {
            return
        }
        
        guard let ip = indexPath else {
            return
        }
        
        projectComponentLabel.text = component

        switch component {
        case "Frontend":
            componentDetailsLabel.text = """
                - Displays a list of created notes as a table view
                - Allows a user to give a note a name and rename a note
                """
        case "Backend":
            componentDetailsLabel.text = """
                - Store created notes on the device
                - keep track of when each note was created and when it was last edited
                """
        case "UI Design":
            componentDetailsLabel.text = """
                - Shows a list of created notes and a "Create Note" button
                - Option to sort notes by name, date created, or recently edited
                """
        default:
            return
        }
    }
}
