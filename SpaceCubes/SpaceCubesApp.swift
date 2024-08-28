//
//  SpaceCubesApp.swift
//  SpaceCubes
//
//  Created by Tim Mitra on 2023-08-19.
//

import SwiftUI

@main
struct SpaceCubesApp: App {
    
    // var for fully immersive view
    @State private var currentStyle: ImmersionStyle = .mixed
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
        .immersionStyle(selection: $currentStyle, in: .mixed)
    }
}
