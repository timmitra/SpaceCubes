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
      RealityView { content, attachments  in
        // Add the initial RealityKit content
        if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
          content.add(scene)
            
        }
      } update: { content, attachments in
          if let scene = content.entities.first {
              if let cubeAttachment = attachments.entity(for: "cube-label") {
                  cubeAttachment.position = [0, 0, -1.5]
                  scene.addChild(cubeAttachment)
              }
          }
          // ...
      } attachments: {
        Attachment(id: "cube-label") {
            VStack {
                Text("Space Cubes")
                    .font(.title)
            }
            .padding(.all, 15)
            .glassBackgroundEffect()
        }
        
      }.offset(y:-1200)
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
