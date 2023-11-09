//
//  ContentView.swift
//  ContactList SwiftUI
//
//  Created by Vladimir on 09.11.2023.
//

import SwiftUI

struct StartHere: View {
    @State private var person = Person.getContactList()
    
    var body: some View {
        TabView {
            NavigationView {
                ContactList(contacts: person)
            }
            .tabItem {
                Label("Contacts", systemImage: "person.2.fill")
            }
            
            ContactListWithSections(persons: person)
                .tabItem {
                    Label("Numbers", systemImage: "phone.circle.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartHere()
    }
}
