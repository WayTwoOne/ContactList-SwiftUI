//
//  DataStrore.swift
//  ContactList SwiftUI
//
//  Created by Vladimir on 09.11.2023.
//

class DataStore {
    static let shared = DataStore()
    
    let names = [
    "John", "Aaron", "Tim", "Ted", "Steven",
    "Sharon", "Nicola", "Allan", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let emails = [
        "jjjj@mail.ru", "kkkk@mail.ru", "llll@mail.ru",
        "qqqq@mail.ru", "wwww@mail.ru", "eeee@mail.ru",
        "tttt@mail.ru", "yyyy@mail.ru", "oooo@mail.ru",
        "zzzz@mail.ru"
    ]
    
    let phones = [
        "123456789", "012345678", "90123788", "4567891234",
        "789654123", "456123789", "147258369", "951753465",
        "126984753", "489732165"
    ]
    
    private init() {}
}
