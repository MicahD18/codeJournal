//
//  ContentView.swift
//  Paths Demo
//
//  Created by Micah Daise on 2/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Awesome Paths Demo")
                .fontWeight(.bold)
                .padding()
            Divider()
            // Step 1: add GeometryReader in case you want to use it
            GeometryReader { g in
                
                // Step 7: add door knob
                Circle()
                    .stroke(lineWidth: 1)
                    .frame(width: 15, height: 15, alignment: .center)
                    .position(x: g.size.width / 2 - 25, y: g.size.height / 2 + 100)
                
                // Step 2: add Path
                Path { path in
                    // Step 3: add outline of house
                    // Base
                    path.move(to: CGPoint(x: 275, y: 400))
                    path.addLine(to: CGPoint(x: 50, y: 400))
                    path.closeSubpath()
                    // Left
                    path.move(to: CGPoint(x: 50, y: 200))
                    path.addLine(to: CGPoint(x: 50, y: 400))
                    path.closeSubpath()
                    // Top
                    path.move(to: CGPoint(x: 50, y: 200))
                    path.addLine(to: CGPoint(x: 275, y: 200))
                    path.closeSubpath()
                    // Right
                    path.move(to: CGPoint(x: 275, y: 200))
                    path.addLine(to: CGPoint(x: 275, y: 400))
                    path.closeSubpath()
                    
                    // Step 4: add door
                    // Left
                    path.move(to: CGPoint(x: 75, y: 275))
                    path.addLine(to: CGPoint(x: 75, y: 400))
                    path.closeSubpath()
                    // Top
                    path.move(to: CGPoint(x: 75, y: 275))
                    path.addLine(to: CGPoint(x: 150, y: 275))
                    path.closeSubpath()
                    // Right
                    path.move(to: CGPoint(x: 150, y: 275))
                    path.addLine(to: CGPoint(x: 150, y: 400))
                    path.closeSubpath()
                    
                    // Step 5: add window
                    // Base
                    path.move(to: CGPoint(x: 250, y: 350))
                    path.addLine(to: CGPoint(x: 175, y: 350))
                    path.closeSubpath()
                    // Left
                    path.move(to: CGPoint(x: 175, y: 275))
                    path.addLine(to: CGPoint(x: 175, y: 350))
                    path.closeSubpath()
                    // Top
                    path.move(to: CGPoint(x: 175, y: 275))
                    path.addLine(to: CGPoint(x: 250, y: 275))
                    path.closeSubpath()
                    // Right
                    path.move(to: CGPoint(x: 250, y: 275))
                    path.addLine(to: CGPoint(x: 250, y: 350))
                    path.closeSubpath()
                    
                    // Step 6: add roof
                    // Left
                    path.move(to: CGPoint(x: 25, y: 232))
                    path.addLine(to: CGPoint(x: g.size.width - 155, y: 50))
                    path.closeSubpath()
                    // Right
                    path.move(to: CGPoint(x: 300, y: 232))
                    path.addLine(to: CGPoint(x: g.size.width - 155, y: 50))
                    path.closeSubpath()
                    
                    // Step 8: add window panes
                    // vertical
                    path.move(to: CGPoint(x: 212, y: 350))
                    path.addLine(to: CGPoint(x: 212, y: 275))
                    path.closeSubpath()
                    // horizontal
                    path.move(to: CGPoint(x: 250, y: 314))
                    path.addLine(to: CGPoint(x: 175, y: 314))
                    path.closeSubpath()
                }
                .stroke()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
