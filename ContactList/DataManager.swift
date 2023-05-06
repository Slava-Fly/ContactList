//
//  DataManager.swift
//  ContactList
//
//  Created by User on 05.05.2023.
//

import Foundation

final class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Gordon", "Slava", "Ivan",
        "Alla", "Jesicca", "Danil",
        "John", "Bill", "Brad", "Chris"
    ]
    
    let surnames = [
        "Peters", "Jordan", "Davis",
        "Grant", "Bardley", "Collins",
        "Jackson", "Cupper", "Alisson", "Jackson"
    ]
    
    let emails = [
        "lsdalf@mail.ru", "sdfdsvlbk.ru", "university.233@mail.ru",
        "tool45@bk.ru", "dog34@yandex.ru", "cuppererr34@yandex.ru",
        "hello.hi@bk.ru", "lkds@bk.ru", "dadada@mail.ru", "coolman@yandex.ru"
    ]
    
    let phones = [
        "95454453132", "95443435433", "43245433432",
        "39434322994", "89506438283", "89324523245",
        "23239329393", "89403402349", "34903409345", "95445635493"
    ]
    
    private init() {}
}


