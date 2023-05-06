//
//  MainScreenView.swift
//  ContactList
//
//  Created by User on 05.05.2023.
//

import SwiftUI

struct MainScreenView: View {
    
    let personInfo = Person.getContactList()
    
    var body: some View {
        NavigationStack{
            List(personInfo) { person in
                NavigationLink(
                    destination: ContactDetailView()
                ) {
                    PersonRow(person: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
    
    struct MainScreenView_Previews: PreviewProvider {
        static var previews: some View {
            MainScreenView()
        }
    }
}
