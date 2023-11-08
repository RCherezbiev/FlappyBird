//
//  PipeView.swift
//  FlappyBird
//
//  Created by Rustam Cherezbiev on 06.11.2023.
//

import SwiftUI

struct PipeView: View {
    let topPipeHeight: CGFloat
    let pipeWidth: CGFloat
    let pipeSpacing: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let availableHeight = geometry.size.height - pipeSpacing
            let bottomPipeHeight = availableHeight - topPipeHeight
            
            VStack {
                // Верхняя труба
                Image(.tube)
                    .resizable()
                    .rotationEffect(.degrees(180))
                    .frame(width: pipeWidth, height: topPipeHeight)
                
                Spacer()
                    .frame(height: pipeSpacing)
                
                Image(.tube)
                    .resizable()
                    .frame(width: pipeWidth, height: bottomPipeHeight)
            }
        }
    }
}

#Preview {
    PipeView(topPipeHeight: 380, pipeWidth: 100, pipeSpacing: 100)
}
