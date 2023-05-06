//
//  ContentView.swift
//  ContactList
//
//  Created by User on 05.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView(){
            VStack(alignment: .leading) {
                TabView {
                    MainScreenView()
                        .tabItem() {
                            Image(
                                systemName: "person.2.fill"
                            )
                            Text("Contacts")
                        }
                    SectionTableView()
                        .tabItem() {
                            Image(
                                systemName: "phone.fill"
                            )
                            Text("Numbers")
                }
            }
        }
    }
        
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}



