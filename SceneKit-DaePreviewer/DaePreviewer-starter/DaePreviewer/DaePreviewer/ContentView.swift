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
            Text("Starter code")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .background(
            GradientView()
        )
    }
}

#Preview {
    ContentView()
}
