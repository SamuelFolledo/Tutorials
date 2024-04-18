//
//  ContentView.swift
//  DaePreviewer
//
//  Created by Samuel Folledo on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DaeView(daePath: "3DAssets.scnassets/Adam/idle.dae")
        }
        .ignoresSafeArea()
        .background(
            GradientView()
        )
    }
}

#Preview {
    ContentView()
}
