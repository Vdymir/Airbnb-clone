//
//  ExploreView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 31/01/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationView = false
    
    var body: some View {
        NavigationStack {
            if showDestinationView {
                DestinationSearchView()
            } else {
                Search()
                    .onTapGesture {
                        withAnimation(.snappy) {
                            showDestinationView.toggle()
                        }
                    }
                
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(0...10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailsView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
