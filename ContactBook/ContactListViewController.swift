//
//  ContaListController.swift
//  ContactBook
//
//  Created by Артур Петин on 14.02.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peronName", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! PersonInfoViewController
            detailVC.person = persons[indexPath.row]
        }
    }

}
