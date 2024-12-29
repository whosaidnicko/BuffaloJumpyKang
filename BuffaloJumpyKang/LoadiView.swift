//
//  LoadiView.swift
//  BuffaloJumpyKang
//
//  Created by Nicolae Chivriga on 23/12/2024.
//

import SwiftUI


struct LoadiView: View {
    @State var timer: Timer?
    @State var rotttationGoing: Double = 0
    @State var navigatiMe: Bool = false
    var body: some View {
        ZStack {
            Image("bgBuffalcik")
                .resizable()
                .ignoresSafeArea()
            
            NavigationLink("", destination: MenuView(), isActive: $navigatiMe)
            VStack {
                Image("logotipsik")
                Spacer()
            }
            .padding(.vertical)
            
            
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(Color.white
                        ,lineWidth: 4)
                .frame(width: 78, height: 78)
                .rotationEffect(.degrees(rotttationGoing))
                .offset(x: -50)
                .onAppear() {
                    timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { sec in
                        withAnimation {
                            rotttationGoing += 30
                        }
                        if rotttationGoing > 300 {
                            navigatiMe = true
                            timer?.invalidate()
                        }
                    }
                }
        }
    }
}
