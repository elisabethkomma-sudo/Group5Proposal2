//
//  ViewController.swift
//  Group5Proposal2
//
//  Created by Komma, Elisabeth A. on 10/30/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var names: [String] = ["Elisabeth", "Ross"]
    var projects: [String] = ["Frontend", "Backend", "UI Design"]
    var preview: [String] = ["Project UI Image"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: UIImage(named: "background"))
        imageView.contentMode = .scaleAspectFill
        //tableView.backgroundColor = UIColor(patternImage: UIImage(named:"background")!)
        tableView.backgroundView = imageView
        //tableView.backgroundColor = .clear
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = sender as? IndexPath else {
            return
        }
        
        switch segue.identifier {
        case "members":
            let vc = segue.destination as! MemberViewController
            vc.memberName = names[indexPath.row]
            //vc.memberRole = memberRoles[indexPath.row]
            //vc.memberNotes = memberNotes[indexPath.row]
        case "projects":
            print("segue2")
            let vc = segue.destination as! ComponentViewController
            vc.componentName = projects[indexPath.row]
            //vc.componentFeatures = componentFeatures[indexPath.row]
        case "preview":
            print("segue3")
            //let vc = segue.destination as! PreviewViewController
        default:
            return
        }
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("#1", #function)
        switch section{
        case 0:
            return names.count
        case 1:
            return projects.count
        default:
            return preview.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#2", #function, indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = "\(names[indexPath.row])"
            break
        case 1:
            cell.textLabel?.text = "\(projects[indexPath.row])"
            break
        default:
            cell.textLabel?.text = "\(preview[indexPath.row])"
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Team Members"
        case 1:
            return "Project"
        default:
            return "Preview"
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Description 1."
        case 1:
            return "Description 2."
        default:
            return "Description 3."
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            print("Selected name: \(names[indexPath.row])")
            performSegue(withIdentifier: "members", sender: indexPath)
        case 1:
            print("Selected project: \(projects[indexPath.row])")
            performSegue(withIdentifier: "projects", sender: indexPath)
        default:
            print("Selected preview: \(preview[indexPath.row])")
            performSegue(withIdentifier: "preview", sender: indexPath)
        }
    }
}
