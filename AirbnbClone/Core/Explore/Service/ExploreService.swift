//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by NamaN  on 29/02/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing]{
        return DeveloperPreview.shared.listing
    }
}
