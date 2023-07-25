//
// Created by Paul Peelen for the use in the Swift Island app
// Copyright © 2023 AppTrix AB. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimating = false

    var body: some View {
        VStack {
            SwiftIslandLogo(isAnimating: isAnimating)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(isAnimating: true)
                .previewDisplayName("With animation")
                .preferredColorScheme(.light)
            ContentView(isAnimating: false)
                .previewDisplayName("Without animation")
                .preferredColorScheme(.light)
            ContentView(isAnimating: true)
                .previewDisplayName("With animation - Dark")
                .preferredColorScheme(.dark)
            ContentView(isAnimating: false)
                .previewDisplayName("Without animation - Dark")
                .preferredColorScheme(.dark)
        }
    }
}
