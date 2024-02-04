//
//  WishListsView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 4/02/24.
//

import SwiftUI

struct WishListsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlists")
                        .font(.headline)
            
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                }
                
                CustomButton(title: "Log in", onAction: {
                    print("Log in")
                })
                
            }
            .padding()
            .navigationTitle("Wishlists")
            
            Spacer()
        }
      
    }
}

#Preview {
    WishListsView()
}
