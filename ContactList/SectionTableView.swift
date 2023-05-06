//
//  SectionTableView.swift
//  ContactList
//
//  Created by User on 05.05.2023.
//

import SwiftUI

struct SectionTableView: View {
    
    let personInfo = Person.getContactList()
    
    var body: some View {
        NavigationView() {
            List {
                ForEach(personInfo) { info in
                    Section("\(info.fullName)") {
                        Text(info.phone)
                        Text(info.email)
                    }
                }
                .navigationTitle("Contact List")
            }
            .listStyle(.plain)
            .font(.title3)
        }
    }
    
    struct SectionTableView_Previews: PreviewProvider {
        static var previews: some View {
            SectionTableView()
        }
    }
}
