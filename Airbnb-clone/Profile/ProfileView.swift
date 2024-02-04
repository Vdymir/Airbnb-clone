//
//  ProfileView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 4/02/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Log in ti start planning your next trip")
                
                Button {
                    print("Hola")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .font(.subheadline)
                        .frame(width: 360, height: 42)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                HStack{
                    Text("Don't have an account? ")
                    Text("Sing up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.footnote)
                .padding(.top)
            }
            
            VStack(spacing: 18) {
                OptionProfile(imageName: "gear", title: "Setting")
                OptionProfile(imageName: "gear", title: "Accessibility")
                OptionProfile(imageName: "questionmark.circle", title: "Setting")
            }.padding(.vertical)
        }
        .padding()

    }
}

#Preview {
    ProfileView()
}

struct OptionProfile: View {
    let imageName: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            
            Text(title)
                .font(.subheadline)
            
            Spacer()
            
            Image(systemName: "chevron.right")
            
        }
        Divider()
    }
}
