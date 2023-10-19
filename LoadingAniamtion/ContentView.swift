//  /*
//
//  Project: LoadingAniamtion
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.10.2023
//
//  */

import SwiftUI

struct ContentView: View {
    @State var start = false
    
    var body: some View {
        
        ZStack {
            
            Text("Dowloading")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            Text("Dowloading")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundStyle(.black)
                .frame(width: 200, height: 100)
                .background(Color.white.opacity(0.7))
                .mask {
                    Circle()
                        .frame(width: 50, height: 50)
                        .offset(x: start ? -70 : 70)
                }
            
            Circle()
                .stroke(lineWidth: 3)
                .frame(width: 50, height: 50)
                .offset(x: start ? -70 : 70)
        }
        .frame(width: 250, height: 150)
        .background(
            Color.black,
            in: RoundedRectangle(cornerRadius: 10))
        .shadow(color: .brown.opacity(0.5), radius: 20, x: 10, y: 10)
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                start = true
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
