//
//  PersonListViewController.swift
//  ContactBook
//
//  Created by Артур Петин on 26.04.2022.
//

import UIKit

class PersonListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        
        content.text = person.mail
        content.secondaryText = person.phonenumber
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "header \(section)"
    }
}
