//
//  CarouselIMages.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 1/02/24.
//

import SwiftUI

struct CarouselIMages: View {
    var images = [
    "room-1",
    "room-2",
    "room-3",
    "room-4",
    ]
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
    CarouselIMages()
}
