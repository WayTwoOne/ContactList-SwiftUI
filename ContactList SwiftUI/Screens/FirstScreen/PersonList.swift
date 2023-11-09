//
//  ContactRow.swift
//  ContactList SwiftUI
//
//  Created by Vladimir on 09.11.2023.
//

import SwiftUI

struct PersonList: View {
    let person: Person
    
    var body: some View {
        List(content: {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                Spacer()
            }
            
            Label(person.phoneNummber, systemImage: "phone")
            Label(person.email, systemImage: "mail")
        })
        .navigationTitle(Text(person.fullName))
        
    }
}
