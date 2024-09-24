//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Ateeq Ahmed on 24/09/24.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        Text(categoryName)
            .font(.headline)
            .padding(.leading, 15)
            .padding(.top, 5)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0){
                ForEach(items) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        CatagoryItem(landmark: landmark)
                    }
                }
            }
        }
        .frame(height: 185)
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    CategoryRow(categoryName: landmarks[0].category.rawValue, items: [landmarks[3]])
}
