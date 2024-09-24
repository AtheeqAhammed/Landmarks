//
//  CatagoryItem.swift
//  Landmarks
//
//  Created by Ateeq Ahmed on 24/09/24.
//

import SwiftUI

struct CatagoryItem: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CatagoryItem(landmark: ModelData().landmarks[0])
}
