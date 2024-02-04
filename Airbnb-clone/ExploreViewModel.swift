//
//  ExploreViewModel.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 4/02/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listing = [ListingModal]()
    private let service: ExploreService
    init(service: ExploreService) {
        self.service = service
            
        Task {await fetchListings()}
    }
    
    
    func fetchListings() async {
        do {
            self.listing = try await service.fetchListing()
        } catch {
            print("Error: Explore View Model with error: \(error.localizedDescription)")
        }
    }
}
