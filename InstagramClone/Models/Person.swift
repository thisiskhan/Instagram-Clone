//
//  Person.swift
//  InstagramClone
//
//  Created by Raza Khan on 20/05/21.
// @razakhan.dev

import Foundation

struct Person: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
}
