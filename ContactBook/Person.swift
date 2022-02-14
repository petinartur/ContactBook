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
    static func getPerson() -> [Person] {
        
        var persons: [Person] = []
        
        for _ in 1...5 {
            let person = Person(
                firstName: names.randomElement() ?? "",
                secondName: surnames.randomElement() ?? "",
                phonenumber: phones.randomElement() ?? "",
                mail: mails.randomElement() ?? ""
            )
            persons.append(person)
        }
        return persons
         
    }
         
}
