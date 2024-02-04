//
//  ListingItemView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 31/01/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing: ListingModal
    
    var body: some View {
        VStack(spacing: 8) {
            // Images
            CarouselIMages(images: listing.imageURLs)
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                VStack(alignment: .leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4) {
                        Text("$ \(listing.pricePerNight) per")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text(listing.rating)
                }
                .foregroundStyle(.black)
                
            }.font(.footnote)
            
        }.padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreiew.shared.listing[0])
}
