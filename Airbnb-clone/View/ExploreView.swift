//
//  ExploreView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 31/01/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationView: Bool = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            if showDestinationView {
                DestinationSearchView(show: $showDestinationView)
            } else {
                Search()
                    .onTapGesture {
                        withAnimation(.snappy) {
                            showDestinationView.toggle()
                        }
                    }
                
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.listing, id: \.id) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: ListingModal.self) { listing in
                    ListingDetailsView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
