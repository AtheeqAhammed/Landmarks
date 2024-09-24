//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Ateeq Ahmed on 24/09/24.
//

import SwiftUI

struct ProfileSummary: View {
    
    var profile: Profile
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off" )")
                Text("Seasonal Photo: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date )
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
}
