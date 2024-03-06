//
//  EditorsChoiceResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct EditorsChoiceResponse: Codable, Identifiable, Equatable {
    public let id: Int
    public let items: [Items]?
}

public struct Items: Codable, Identifiable, Equatable {
    public let backdrop_path: String?
    public let id: Int
    public let original_title: String?
    public let release_date: Date?
    public let poster_path: String?
}
