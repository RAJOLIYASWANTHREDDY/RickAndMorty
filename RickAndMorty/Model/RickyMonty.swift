//
//  RickyMonty.swift
//  RickAndMorty
//
//  Created by yaswanth reddy on 5/29/26.
//

import UIKit

struct CharacterResponse {
    let info: Info
    let results: [Character]
}

struct Character {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: OriginLocation
    let location: OriginLocation
    let image: String
    let url: String
    let created: String
}

struct OriginLocation {
    let name: String
    let url: String
}

struct Info {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
