//
//  TabBarViewController.swift
//  ContactBook
//
//  Created by Артур Петин on 25.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with: [Person]) {
        let contactListVC = viewControllers?.first as! ContactListViewController
        let secondVC = viewControllers?.last as! PersonListViewController
        
        contactListVC.persons = persons
        secondVC.persons = persons
    }
}
