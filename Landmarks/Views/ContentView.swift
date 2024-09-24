//
//  ContentView.swift
//  Landmarks
//
//  Created by Ateeq Ahmed on 22/09/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
