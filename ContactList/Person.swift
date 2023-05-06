//
//  Person.swift
//  ContactList
//
//  Created by User on 05.05.2023.
//

import Foundation
import SwiftUI

struct Person: Identifiable {

    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
       ("\(name) \(surname)")
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let countOfIteration = min(
            names.count, surnames.count,
            emails.count, phones.count
        )
        
        for index in 0..<countOfIteration {
            let person = Person(
                name: names[index], surname: surnames[index],
                email: emails[index], phone: phones[index]
            )
            
            persons.append(person)
            
        }
        
        return persons
    }
}

