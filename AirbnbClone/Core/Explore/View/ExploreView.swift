//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by NamaN  on 09/02/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView : Bool = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView {
                DestinationSearchView(showDestinationSearchView: $showDestinationSearchView)
            }else{
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing : 32){
                        ForEach(viewModel.listings){ listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}