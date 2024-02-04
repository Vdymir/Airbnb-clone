//
//  DestinationSearchView.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 2/02/24.
//

import SwiftUI

enum DestinationSearchOption {
    case location
    case date
    case guest
}

struct DestinationSearchView: View {
    
    @Binding var show: Bool
    @State private var destination: String = ""
    
    @State private var destinationOption: DestinationSearchOption = .location
    @State private var starDate = Date()
    @State private var endDate = Date()
    @State private var countGuest = 0
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    show.toggle()
                } label: {
                    Image(systemName: "xmark.circle")
                        .foregroundStyle(.black)
                        .imageScale(.large)
                }
                
                Spacer()
                
                if !destination.isEmpty {
                    Button("Clear"){
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                
            }.padding()
            
            VStack(alignment: .leading) {
                if destinationOption == .location {
                        Text("Where to?")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                        
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.small)
                            
                            TextField("Searsh Destinations", text: $destination)
                                .font(.subheadline)
                        }
                        .frame(height: 44)
                        .padding(.horizontal)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(Color(.systemGray))
                        }
                } else {
                    CollapsedPickerView(title: "Where", description: "Add destination")
                        .onTapGesture {
                            destinationOption = .date
                        }
                }
            }
            .modifier(CollapsedConatinerView())
            .onTapGesture {
                withAnimation(.easeInOut){
                    destinationOption = .location
                }
            }
            
            //Data selection view
            VStack(alignment: .leading) {
                if destinationOption == .date {
    
                    Text("When's you trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        DatePicker("From", selection: $starDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }.font(.footnote).foregroundStyle(.gray).fontWeight(.semibold)
                    
                        
                  
                } else {
                    CollapsedPickerView(title: "when", description: "Add date")
                }
            }
            .modifier(CollapsedConatinerView())
            .onTapGesture {
                withAnimation(.easeInOut){
                    destinationOption = .date
                }
            }
            
            // num selection view
            VStack(alignment: .leading) {
                if destinationOption == .guest {
                    Text("Who's coming")
                        .font(.title)
                        .fontWeight(.semibold)
                  
                    Stepper {
                        Text("\(countGuest) Adults")
                    } onIncrement: {
                        countGuest += 1
                    } onDecrement: {
                        guard countGuest > 0 else { return }
                        countGuest -= 1
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsedConatinerView())
            .onTapGesture {
                withAnimation(.easeInOut){
                    destinationOption = .guest
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedConatinerView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }.font(.subheadline).fontWeight(.semibold)
        }
    }
}
