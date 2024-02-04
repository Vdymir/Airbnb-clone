//
//  CarouselIMages.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 1/02/24.
//

import SwiftUI

struct CarouselIMages: View {
    let images: [String]
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                    Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    CarouselIMages(images: ["room-1", "room-2"])
}
