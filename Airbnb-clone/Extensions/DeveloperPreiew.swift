//
//  DeveloperPreiew.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 4/02/24.
//

import Foundation

class DeveloperPreiew {
    static let shared = DeveloperPreiew()
    
    var listing: [ListingModal] = [
        .init(
            id: UUID().uuidString,
            userId: UUID().uuidString,
            userName: "Juan Perez",
            userImage: "profile",
            numberOfBedroom: Int.random(in: 1...5),
            numberOfBathromm: Int.random(in: 1...3),
            numberOfGuest: Int.random(in: 1...10),
            numberOfBeds: Int.random(in: 1...5),
            pricePerNight: Int.random(in: 50_000...500_000),
            latitude: 4.60971, // Bogotá
            longitude: -74.08175,
            imageURLs: ["room-1", "room-10", "room-4"],
            address: "Calle 93 #13-24",
            city: "Bogotá",
            state: "Bogotá",
            title: "Cómodo apartamento en el centro",
            rating: "4.5",
            feature: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .tv, .laundry],
            type: .apartment
        ),
        .init(
            id: UUID().uuidString,
            userId: UUID().uuidString,
            userName: "Ana Gómez",
            userImage: "profile",
            numberOfBedroom: Int.random(in: 1...4),
            numberOfBathromm: Int.random(in: 1...2),
            numberOfGuest: Int.random(in: 1...8),
            numberOfBeds: Int.random(in: 1...4),
            pricePerNight: Int.random(in: 40_000...300_000),
            latitude: 6.244203, // Medellín
            longitude: -75.581212,
            imageURLs: ["room-6", "room-2", "room-10"],
            address: "Carrera 50 #10-20",
            city: "Medellín",
            state: "Antioquia",
            title: "Acogedor espacio en Poblado",
            rating: "4.7",
            feature: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .office],
            type: .apartment
        ),
        .init(
            id: UUID().uuidString,
            userId: UUID().uuidString,
            userName: "Carlos Ruiz",
            userImage: "profile",
            numberOfBedroom: Int.random(in: 2...5),
            numberOfBathromm: Int.random(in: 2...3),
            numberOfGuest: Int.random(in: 2...9),
            numberOfBeds: Int.random(in: 2...5),
            pricePerNight: Int.random(in: 60_000...400_000),
            latitude: 3.451647, // Cali
            longitude: -76.531985,
            imageURLs: ["room-2", "room-5", "room-3"],
            address: "Avenida 5N #23N-75",
            city: "Cali",
            state: "Valle del Cauca",
            title: "Hermosa casa con jardín",
            rating: "4.8",
            feature: [.superHost],
            amenities: [.pool, .laundry, .wifi, .tv],
            type: .house
        ),
        .init(
            id: UUID().uuidString,
            userId: UUID().uuidString,
            userName: "Lucía Martínez",
            userImage: "profile",
            numberOfBedroom: Int.random(in: 1...3),
            numberOfBathromm: Int.random(in: 1...2),
            numberOfGuest: Int.random(in: 1...6),
            numberOfBeds: Int.random(in: 1...3),
            pricePerNight: Int.random(in: 30_000...200_000),
            latitude: 10.968540, // Barranquilla
            longitude: -74.781320,
            imageURLs: ["room-7", "room-9", "room-8"],
            address: "Calle 84 #42-22",
            city: "Barranquilla",
            state: "Atlántico",
            title: "Apartamento fresco y luminoso",
            rating: "4.3",
            feature: [.superHost],
            amenities: [.wifi, .kitchen, .office],
            type: .apartment
        ),
        .init(
            id: UUID().uuidString,
            userId: UUID().uuidString,
            userName: "Sofía Castro",
            userImage: "profile",
            numberOfBedroom: Int.random(in: 3...6),
            numberOfBathromm: Int.random(in: 2...4),
            numberOfGuest: Int.random(in: 4...12),
            numberOfBeds: Int.random(in: 3...6),
            pricePerNight: Int.random(in: 100_000...600_000),
            latitude: 11.004107, // Cartagena
            longitude: -74.807014,
            imageURLs: ["room-3", "room-2", "room-5"],
            address: "Bocagrande, Carrera 2 #5-60",
            city: "Cartagena",
            state: "Bolívar",
            title: "Lujoso penthouse con vista al mar",
            rating: "4.9",
            feature: [.selfCheckIn, .superHost],
            amenities: [.pool, .wifi, .laundry, .tv, .balcony],
            type: .apartment
        ),
    ]
}
