//
//  ImmersiveView.swift
//  SpaceCubes
//
//  Created by Tim Mitra on 2023-08-19.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content
            if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
                content.add(scene)
            }
        }.offset(y:-1200)
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
