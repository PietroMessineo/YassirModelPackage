//
//  WatchProvidersResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct WatchProvidersResponse: Codable, Identifiable {
    public let id: Int
    let results: [String: CountryResult]
}

public struct CountryResult: Codable {
    let link: String
    let buy, rent, flatrate: [Provider]?

    enum CodingKeys: String, CodingKey {
        case link, buy, rent
        case flatrate = "flatrate"
    }
}

public struct Provider: Codable, Identifiable {
    public let id = UUID().uuidString
    let logoPath: String
    let providerID: Int
    let providerName: String
    let displayPriority: Int
    var subtitle: String?

    enum CodingKeys: String, CodingKey {
        case logoPath = "logo_path"
        case providerID = "provider_id"
        case providerName = "provider_name"
        case displayPriority = "display_priority"
    }
}
