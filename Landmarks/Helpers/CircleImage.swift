//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ateeq Ahmed on 22/09/24.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
                    .shadow(radius: 7)
            }
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
