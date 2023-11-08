//
//  GameView.swift
//  FlappyBird
//
//  Created by Rustam Cherezbiev on 06.11.2023.
//

import SwiftUI

struct GameView: View {
    private let birdPosition = CGPoint(x: 100, y: 300)
    private let topPipeHeight = CGFloat.random(in: 100...500)
    private let pipeWidth: CGFloat = 100
    private let pipeSpacing: CGFloat = 100
    private let pipeOffset: CGFloat = 0
    private let scores = 0
    
    private let birdSize: CGFloat = 80
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    Image(.background)
                        .resizable()
                        .ignoresSafeArea()
                        .padding(
                            EdgeInsets(
                                top: 0,
                                leading: 0,
                                bottom: -50,
                                trailing: -30
                            )
                        )
                    
                    BirdView(birdSize: birdSize)
                        .position(birdPosition)
                    
                    PipeView(
                        topPipeHeight: topPipeHeight,
                        pipeWidth: pipeWidth,
                        pipeSpacing: pipeSpacing
                    )
                    .offset(x: geometry.size.width + pipeOffset)
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Text(scores.formatted())
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    GameView()
}
