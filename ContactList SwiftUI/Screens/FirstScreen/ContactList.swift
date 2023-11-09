//
//  ContactList.swift
//  ContactList SwiftUI
//
//  Created by Vladimir on 09.11.2023.
//

import SwiftUI

struct ContactList: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink("\(contact.fullName)") {
                PersonList(person: contact)
            }
        }
        .navigationTitle("Contact List")
    }
}

