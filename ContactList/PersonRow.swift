//
//  PersonRow.swift
//  ContactList
//
//  Created by User on 07.05.2023.
//

import Foundation
import SwiftUI

struct PersonRow: View {

    let person: Person

    var body: some View {
                Text(person.fullName)
            .font(.system(size: 20, weight: .light, design: .default))
        }
}
