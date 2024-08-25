//
//  ContentView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            TabView {
                WelcomeView()
                ForEach(Exercise.exercises.indices, id: \.self) {index in
                    Text ("Exercise 2")
                } .tabViewStyle (PageTabViewStyle (indexDisplayMode: .never))
            }
        }
    }
    
   
}
#Preview {
    ContentView()
}
