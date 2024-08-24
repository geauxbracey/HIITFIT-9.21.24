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
                Text("Welcome")
                    .tabItem { Text ("Welcome") }
                Text("Exercise 1")
                    .tabItem { Text ("Exercise 1") }
                Text("Exercise 2")
                    .tabItem { Text ("Exercise 2") }
            }
        }
    }
}

#Preview {
    ContentView()
}
