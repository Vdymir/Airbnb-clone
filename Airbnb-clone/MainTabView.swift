//
//  MainTabView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 4/02/24.
//

import SwiftUI

struct MainTabView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishListsView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
      
    }
}

#Preview {
    MainTabView()
}
