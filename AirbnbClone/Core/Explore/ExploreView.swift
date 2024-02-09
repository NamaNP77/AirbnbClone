//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by NamaN  on 09/02/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                SearchAndFilterBar()
                LazyVStack(spacing : 32){
                    ForEach(0 ... 10, id: \.self){ listing in
                        ListingItemView()
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
