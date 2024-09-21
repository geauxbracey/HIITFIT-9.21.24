//
//  ContentView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/24/24.
//
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            TabView {
//                WelcomeView()
//                ForEach(Exercise.exercises.indices, id: \.self) {index in
//                    Text ("Exercise 2")
//                } .tabViewStyle (PageTabViewStyle (indexDisplayMode: .never))
//            }
//        }
//    }
//    
//   
//}
//#Preview {
//    ContentView()
//}

// THE CODE ABOVE IS WHAT I HAD BY PAGE 124 AND WAS GIVING ME ERRORS IN THE WAY MY APP WAS FUNCTIONING. I'M NOT SURE WHAT I DID WRONG OR WHAT INSTRUCTION I MISSED IN THE BOOK. THE CODE BELOW WAS COPY AND PASTED FROM GITHUB (THE CODE PROVIDED TO US FOR REFERENCE). THE APP WORKED CORRECTLY ONCE I PASTED THIS IN, BUT I WANTED TO LEAVE MY ORIGINAL CODE IN FOR ACADEMIC HONESTY.

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 9
    
    //    var body: some View {
    //    TabView {
    //      WelcomeView()
    //      ForEach(Exercise.exercises.indices, id: \.self) { index in
    //        ExerciseView(index: index)
    //      }
    //    }
    //    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    //  }
    //} commented out this section per page 153
    
    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab) // 1
                .tag(9) // 2
            ForEach(Exercise.exercises.indices, id: \.self) { index in
                ExerciseView(selectedTab: $selectedTab, index: index)
                    .tag(index) // 3
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
