//
//  ContentView.swift
//  Gacha_swiftui
//
//  Created by tanaka niko on 2025/07/11.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    
    var body: some View {
        ZStack{
            Image("gacha")
                .resizable()
                .ignoresSafeArea()
            Button{
                showSheet = true
            } label: {
                Image("Presentbox")
                    .resizable()
                    .scaledToFit()
            }
            
        }
        .fullScreenCover(isPresented: $showSheet){
            ResultView()
        }
    }
}

#Preview {
    ContentView()
}
