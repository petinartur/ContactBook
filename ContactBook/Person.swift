//
//  Person.swift
//  ContactBook
//
//  Created by Артур Петин on 14.02.2022.
//

struct Person {
    let firstName: String
    let secondName: String
    let phonenumber: String
    let mail: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
}


extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.mails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: names[index],
                secondName: surnames[index],
                phonenumber: phones[index],
                mail: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
