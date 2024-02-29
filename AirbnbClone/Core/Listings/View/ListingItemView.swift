//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by NamaN  on 09/02/24.
//

import SwiftUI

struct ListingItemView: View {
   
    let listing : Listing
    
    var body: some View {
        VStack(spacing: 8) {
            //images
            
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listingDetails
            HStack(alignment : .top){
                //details
                VStack(alignment : .leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("5 km away")
                        .foregroundStyle(.gray)
                    
                    Text("Feb 10 - 13")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing : 4){
                        Text("Rs. \(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                //rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
                
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listing[0])
}
