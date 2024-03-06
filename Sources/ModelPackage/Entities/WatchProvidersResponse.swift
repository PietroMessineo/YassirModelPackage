//
//  WatchProvidersResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct WatchProvidersResponse: Codable, Identifiable {
    public init(id: Int, results: [String : CountryResult]) {
        self.id = id
        self.results = results
    }
    
    public let id: Int
    public let results: [String: CountryResult]
}

public struct CountryResult: Codable {
    public init(link: String, buy: [Provider]?, rent: [Provider]?, flatrate: [Provider]?) {
        self.link = link
        self.buy = buy
        self.rent = rent
        self.flatrate = flatrate
    }
    
    public let link: String
    public let buy, rent, flatrate: [Provider]?

    public enum CodingKeys: String, CodingKey {
        case link, buy, rent
        case flatrate = "flatrate"
    }
}

public struct Provider: Codable, Identifiable {
    public init(logoPath: String, providerID: Int, providerName: String, displayPriority: Int, subtitle: String? = nil) {
        self.logoPath = logoPath
        self.providerID = providerID
        self.providerName = providerName
        self.displayPriority = displayPriority
        self.subtitle = subtitle
    }
    
    public let id = UUID().uuidString
    public let logoPath: String
    public let providerID: Int
    public let providerName: String
    public let displayPriority: Int
    public var subtitle: String?

    public enum CodingKeys: String, CodingKey {
        case logoPath = "logo_path"
        case providerID = "provider_id"
        case providerName = "provider_name"
        case displayPriority = "display_priority"
    }
}
