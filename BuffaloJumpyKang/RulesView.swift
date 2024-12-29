//
//  RulesView.swift
//  BuffaloJumpyKang
//
//  Created by Nicolae Chivriga on 28/12/2024.
//

import SwiftUI


struct RulesView: View {
    var body: some View {
        ZStack {
            Image("bgBuffalcik")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("pravila")
                    .overlay {
                        Text("""
Your task is to tap on the kangaroo to make it jump and release your finger at the right moment to land precisely on the hole. Be careful: if the kangaroo misses, it will fall into the water, and the game will end!
Your character will evolve as you achieve great results! Start with the kangaroo, and as you reach impressive milestones, your hero will transform into a bison. Keep jumping accurately to unlock new characters and keep the adventure going!
""")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .font(.system(size: 14, weight: .heavy, design: .monospaced))
                        .padding(.top, 165)
                        .padding(.horizontal, 15)
                    }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Back())
    }
}
