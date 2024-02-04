//
//  ListingModal.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 4/02/24.
//

import Foundation

struct ListingModal: Identifiable, Codable, Hashable {
    let id: String
    let userId: String
    let userName: String
    let userImage: String
    let numberOfBedroom: Int
    let numberOfBathromm: Int
    let numberOfGuest: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: String
    var feature: [ListingFeaure]
    var amenities: [ListingAmenities]
    let type: ListinType
    
}

enum ListingFeaure: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost

    var imageName: String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckIn: return "Check yourself in with the keypad."
        case .superHost: return "superhosts are experienced, highly rated hots who are commited to providing great start for guests."
        }
    }
    
    var id: Int {return self.rawValue}
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .alarmSystem: return "Alarm System"
        case .balcony: return "Balcony"
        case .kitchen: return "Kitchen"
        case .laundry: return "Laundry"
        case .office: return "office"
        case .tv: return "Tv"
        case .wifi: return "Wi-fi"
        }
    }
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swin"
        case .alarmSystem: return "checkerboard.shield"
        case .balcony: return "building"
        case .kitchen: return "fork.knife"
        case .laundry: return "washer"
        case .office: return "pencil.and.ruler.fill"
        case .tv: return "tv"
        case .wifi: return "wifi"
        }
    }
    
    var id: Int {return self.rawValue}
}

enum ListinType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town House"
        case .villa: return "Villa"
        }
    }
    
    var id: Int {return self.rawValue}
}
