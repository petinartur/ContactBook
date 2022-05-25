//
//  PersonListViewController.swift
//  ContactBook
//
//  Created by Артур Петин on 26.04.2022.
//

import UIKit

class PersonListViewController: UITableViewController {

    var persons: [Person] = []
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.mail
            content.image = UIImage(systemName: Contacts.email.rawValue)
        default:
            content.text = person.phonenumber
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        }
                
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
