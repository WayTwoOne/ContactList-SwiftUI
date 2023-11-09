//
//  ContactListWithSections.swift
//  ContactList SwiftUI
//
//  Created by Vladimir on 09.11.2023.
//

import SwiftUI

struct ContactListWithSections: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Section(person.fullName) {
                Label(person.phoneNummber, systemImage: "phone")
                Label(person.email, systemImage: "mail")
            }
        }
    }
}

struct ContactListWithSections_Previews: PreviewProvider {
    static var previews: some View {
        ContactListWithSections(persons: Person.getContactList())
    }
}
