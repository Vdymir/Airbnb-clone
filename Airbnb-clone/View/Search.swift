//
//  Search.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 31/01/24.
//

import SwiftUI

struct Search: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Weel - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
               Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }.padding(.horizontal)
            .padding(.vertical, 10)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray4))
                    .shadow(color: .black.opacity(0.4),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            .padding()
    }
}

#Preview {
    Search()
}
