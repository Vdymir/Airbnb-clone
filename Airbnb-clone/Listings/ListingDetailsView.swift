//
//  ListingDetailsView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 1/02/24.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {
    
    @Environment(\.dismiss) var dismiss
  
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .topLeading) {
                CarouselIMages()
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }.padding(35)
                }
            }
            
            // name and rate
            VStack(alignment: .leading, spacing: 16) {
                Text("Miami Villa")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.87")
                        
                        Text(" - ")
                        
                        Text("28 review")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    
                    Text("Miami, florida")
                }
                .font(.caption)
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
          
            Divider()
            
            // host info view
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Enteri villa hosted by Vladimir Castaneda")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 1) {
                        Text("4 guests - ")
                        Text("4 bedrooms - ")
                        Text("4 beds - ")
                        Text("3 baths - ")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            // listing feature
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0..<2, id: \.self) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("SuperHost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("SuperHost are experience, highly rated hosts who are commited to providing great start for guests")
                                .font(.footnote)
                                .foregroundStyle(.gray)
                            
                        }
                    }
                    
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding()
            
            Divider()
            
            // beedrooms view
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16){
                        ForEach(0 ..< 5, id: \.self) {beedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(beedroom)")
                            }
                            .padding(20)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }.padding()
            
            Divider()
            
            //listing amenities
            VStack (alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(1 ..< 5, id: \.self) { offer in
                    HStack(spacing: 10){
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            // Map
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map( ) {
                    
                }.frame(width: .infinity, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
        }
        .ignoresSafeArea()
        .padding(.bottom, 74)
        .overlay(alignment: .bottom) {
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading){
                        Text("$500")
                            .font(.headline)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 15 - 2024")
                            .underline()
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline )
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                }.padding(.horizontal, 32)
            }.background(.white)
        }
      
    }
}

#Preview {
    ListingDetailsView()
}
