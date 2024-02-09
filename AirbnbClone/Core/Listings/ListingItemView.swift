//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by NamaN  on 09/02/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            //images
            TabView{
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                    
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            //listingDetails
            HStack(alignment : .top){
                //details
                VStack(alignment : .leading){
                    Text("Udaipur, Rajasthan")
                        .fontWeight(.semibold)
                    
                    Text("5 km away")
                        .foregroundStyle(.gray)
                    
                    Text("Feb 10 - 13")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing : 4){
                        Text("Rs. 3000")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                //rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
