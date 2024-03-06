//
//  EditorsChoiceResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct EditorsChoiceResponse: Codable, Identifiable, Equatable {
    public let id: Int
    let items: [Items]?
}

public struct Items: Codable, Identifiable, Equatable {
    let backdrop_path: String?
    public let id: Int
    let original_title: String?
    let release_date: Date?
    let poster_path: String?
}
