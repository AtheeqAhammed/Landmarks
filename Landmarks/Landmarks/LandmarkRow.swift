//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Ateeq Ahmed on 22/09/24.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }

    }
}

#Preview {
    LandmarkRow(landmark: ModelData().landmarks[0])
}
