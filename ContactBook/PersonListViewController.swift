//
//  PersonListViewController.swift
//  ContactBook
//
//  Created by Артур Петин on 26.04.2022.
//

import UIKit

class PersonListViewController: UITableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.mail
        content.secondaryText = person.phonenumber
                
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
