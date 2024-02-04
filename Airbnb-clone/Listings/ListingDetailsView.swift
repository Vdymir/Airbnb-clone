//
//  ListingDetailsView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 1/02/24.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {
    let listing: ListingModal
    @Environment(\.dismiss) var dismiss
    @State private var cameraPositionMap: MapCameraPosition
  
    init(listing: ListingModal){
        self.listing = listing
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: listing.latitude, longitude: listing.longitude), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        
        self._cameraPositionMap = State(initialValue: .region(region))
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .topLeading) {
                CarouselIMages(images: listing.imageURLs)
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
                Text("\(listing.title)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("\(listing.rating)")
                        
                        Text(" - ")
                        
                        Text("28 review")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    
                    Text("\(listing.city), \(listing.state)")
                }
                .font(.caption)
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
          
            Divider()
            
            // host info view
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Enteri \(listing.type.description) by \(listing.userName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 1) {
                        Text("\(listing.numberOfGuest) guests - ")
                        Text("\(listing.numberOfBedroom) bedrooms - ")
                        Text("\(listing.numberOfBeds) beds - ")
                        Text("\(listing.numberOfBathromm) baths")
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
                ForEach(listing.feature, id: \.self) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: feature.imageName)
                        
                        VStack(alignment: .leading) {
                            Text("\(feature.title)")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("\(feature.subtitle)")
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
                        ForEach(0 ..< listing.numberOfBeds, id: \.self) {beedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(beedroom + 1)")
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
                
                ForEach(listing.amenities, id: \.self) { offer in
                    HStack(spacing: 10){
                        Image(systemName: "\(offer.imageName)")
                            .frame(width: 32)
                        Text("\(offer.title)")
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
                
                Map(position: $cameraPositionMap)
                    .frame(width: .infinity, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 74)
        .overlay(alignment: .bottom) {
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading){
                        Text("$\(listing.pricePerNight)")
                            .font(.headline)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 15 - 2024")
                            .underline()
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    
                    CustomButton(title: "Reserve", onAction: {
                        print("hellow")
                    }, width: 120, height: 42)
                    
                }.padding(.horizontal, 32)
            }.background(.white)
        }
      
    }
}

#Preview {
    ListingDetailsView(listing: DeveloperPreiew.shared.listing[0])
}
