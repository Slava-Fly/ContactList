//
//  ContactDetailView.swift
//  ContactList
//
//  Created by User on 05.05.2023.
//

import SwiftUI

struct ContactDetailView: View {
    
    let data = DataManager.shared
    
    var body: some View {
        NavigationStack{
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                
                List {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                            .font(.callout)
                            .frame(alignment: .leading)
                        Text(data.phones.randomElement() ?? "")
                    }
                    HStack {
                        Image(systemName: "mail")
                            .foregroundColor(.blue)
                            .font(.callout)
                            .frame(alignment: .leading)
                        Text(data.emails.randomElement() ?? "")
                    }
                }
            }
        }
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView()
    }
}
