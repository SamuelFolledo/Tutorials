//
//  GradientView.swift
//  DaePreviewer
//
//  Created by Samuel Folledo on 4/16/24.
//

import SwiftUI

struct GradientView: View {
    @State var gradient = [Color(uiColor: .label), Color.red]
    @State var startPoint = UnitPoint(x: 0, y: 0)
    @State var endPoint = UnitPoint(x: 0, y: 1)

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(LinearGradient(gradient: Gradient(colors: gradient), startPoint: startPoint, endPoint: endPoint))
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview("GradientView") {
    GradientView()
}
