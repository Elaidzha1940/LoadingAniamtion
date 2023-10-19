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
            
            Text("Loading")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            Text("Loading")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundStyle(.black)
                .frame(width: 200, height: 100)
                .background(Color.black.opacity(0.9))
                .mask {
                    Circle()
                        .frame(width: 50, height: 50)
                        .offset(x: start ? -50 : 50)

                }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
