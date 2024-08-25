//
//  WelcomeView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/24/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            VStack {
             HStack {
             VStack(alignment: .leading) {
             Text("Get fit")
             .font(.largeTitle)
             Text("with high intensity interval training")
             .font(.headline)
                                        }
                 Image("step-up")
                 #imageLiteral(resourceName: "step-up.png")
                 //when I put the step up image in from the library, no code appeared, just an image symbol

                    }
            } 
            VStack  {
                HeaderView(titleText: "Welcome")
                Spacer()
                Button("History") { }
                 .padding(.bottom)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
