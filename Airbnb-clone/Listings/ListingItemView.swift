//
//  ListingItemView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 31/01/24.
//

import SwiftUI

struct ListingItemView: View {
    var images = [
    "room-1",
    "room-2",
    "room-3",
    "room-4",
    ]
    var body: some View {
        VStack(spacing: 8) {
            // Images
            CarouselIMages()
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                VStack(alignment: .leading){
                    Text("Miami Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4) {
                        Text("$546")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.45")
                }
                .foregroundStyle(.black)
                
            }.font(.footnote)
            
        }.padding()
    }
}

#Preview {
    ListingItemView()
}
