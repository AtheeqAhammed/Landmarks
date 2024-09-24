//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ateeq Ahmed on 22/09/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
