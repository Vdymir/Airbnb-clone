//
//  ExploreService.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 4/02/24.
//

import Foundation

class ExploreService {
    func fetchListing() async throws -> [ListingModal] {
        return DeveloperPreiew.shared.listing
    }
}
