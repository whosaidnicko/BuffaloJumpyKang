//
//  MenuView.swift
//  BuffaloJumpyKang
//
//  Created by Nicolae Chivriga on 23/12/2024.
//

import SwiftUI
import StoreKit

struct MenuView: View {
    @Environment(\.requestReview) var requestReview
    var body: some View {
        ZStack {
            Image("bgBuffalcik")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("logotipsik")
                
                HStack {
                    VStack(spacing: 18) {
                        NavigationLink {
                            GameV()
                        } label: {
                            navTo(text: "PLAY")
                        }

                        
                        NavigationLink {
                            RulesView()
                        } label: {
                            navTo(text: "RULES")
                        }

                        
                        Button {
                            requestReview()
                        } label: {
                            navTo(text: "RATE")
                        }

                       
                    }
                    Spacer()
                }
                .offset(x: 60)
                Spacer()
            }
            .padding(.vertical)
        }
        .navigationBarBackButtonHidden()
    }
    
    func navTo(text: String) -> some View {
        Image("lir")
            .overlay {
                Text(text)
                    .font(.system(size: 26, weight: .bold, design: .monospaced))
                    .foregroundStyle(.white)
            }
    }
}
