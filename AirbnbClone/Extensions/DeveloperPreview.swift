//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by NamaN  on 29/02/24.
//

import Foundation

class DeveloperPreview {
    var listing: [Listing] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Naman", ownerImageUrl: "ProfilePhoto", numberOfBedroom: 4, numberOfBathroom: 4, numberOfGuest: 4, numberOfBeds: 4, pricePerNight: 6000, latitude: 28.7041, longitutde: 77.1025, imageURLs: ["listing-1" , "listing-2", "listing-3", "listing-4"], address: "Punjabi Bagh", city: "New Delhi", state: "Delhi", title: "Paradise", rating: 4.8, feature: [.selfCheckIn, .superHost], amenities: [.wifi,.tv,.pool,.office,.laundry,.kitchen,.balcony], type: .apartment),
        
            .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Prem", ownerImageUrl: "ProfilePhoto", numberOfBedroom: 3, numberOfBathroom: 3, numberOfGuest: 3, numberOfBeds: 3, pricePerNight: 5000, latitude: 32.1024, longitutde: 77.5619, imageURLs: ["listing-2" , "listing-3", "listing-4", "listing-1"], address: "Mall Road", city: "Manali", state: "Himachal Pradesh", title: "Vagabonds", rating: 4.6, feature: [.selfCheckIn, .superHost], amenities: [.wifi,.tv,.pool,.office,.laundry,.kitchen], type: .house),
        
            .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "John", ownerImageUrl: "ProfilePhoto", numberOfBedroom: 2, numberOfBathroom: 2, numberOfGuest: 2, numberOfBeds: 2, pricePerNight: 4000, latitude: 32.7266, longitutde: 74.8570, imageURLs: ["listing-3" , "listing-4", "listing-1", "listing-2"], address: "Temple Road", city: "Katra", state: "Jammu", title: "Surya International", rating: 4.4, feature: [.selfCheckIn,.superHost], amenities: [.wifi,.tv,.pool], type: .townhouse),
        
            .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Nick", ownerImageUrl: "ProfilePhoto", numberOfBedroom: 1, numberOfBathroom: 1, numberOfGuest: 1, numberOfBeds: 1, pricePerNight: 3000, latitude: 10.1632, longitutde: 76.6413, imageURLs: ["listing-4" , "listing-1", "listing-2", "listing-3"], address: "BeachSide", city: "NA", state: "Kerela", title: "CozyStay", rating: 4.2, feature: [.selfCheckIn], amenities: [.wifi,.tv,.pool,.alarmSystem], type: .villa)
        
    ]
}
