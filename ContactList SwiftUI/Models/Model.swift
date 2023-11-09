//
//  Model.swift
//  ContactList SwiftUI
//
//  Created by Vladimir on 09.11.2023.
//

import Foundation

struct Person: Identifiable {
   
    let name, surname, email, phoneNummber: String
    var id = UUID()

    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNummber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
