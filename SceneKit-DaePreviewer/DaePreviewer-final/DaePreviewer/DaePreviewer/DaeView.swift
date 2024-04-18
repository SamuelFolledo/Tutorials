//
//  DaeView.swift
//  DaePreviewer
//
//  Created by Samuel Folledo on 4/16/24.
//

import SwiftUI
import SceneKit

let shouldLimitRotation: Bool = true

struct DaeView: UIViewRepresentable {
    typealias UIViewType = SCNView
    let daePath: String

    func makeUIView(context: Context) -> UIViewType {
        let view = SCNView()
        view.backgroundColor = .black
        //set up camera
        view.allowsCameraControl = true
        view.defaultCameraController.interactionMode = .orbitTurntable
        view.defaultCameraController.inertiaEnabled = true
        //set up lights
        view.autoenablesDefaultLighting = true
        if shouldLimitRotation {
            //limit camera rotations
            view.defaultCameraController.maximumVerticalAngle = 89
            view.defaultCameraController.minimumVerticalAngle = -89
            view.defaultCameraController.maximumHorizontalAngle = 89
            view.defaultCameraController.minimumHorizontalAngle = -89
        }
        //return view
        view.scene = SCNScene(named: daePath)
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) { }
}

#Preview("Dae Viewer") {
    DaeView(daePath: "3DAssets.scnassets/Adam/idle.dae")
}
