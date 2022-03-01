//
//  PersanInfoViewController.swift
//  ContactBook
//
//  Created by Артур Петин on 01.03.2022.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    var person: Person!
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneLabel.text = "phone: \(person.phonenumber)"
        mailLabel.text = "mail: \(person.mail)"
    }
    
}
