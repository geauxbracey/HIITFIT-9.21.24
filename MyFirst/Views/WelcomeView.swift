//
//  WelcomeView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/24/24.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var selectedTab: Int
    
    @State private var showHistory = false
    
    var body: some View {
        ZStack{
            VStack {
                HStack (alignment: .bottom){
                    VStack(alignment: .leading) {
                        Text("Get fit")
                            .font(.largeTitle)
                        Text("with high intensity interval training")
                            .font(.headline)
                                        }
                 Image("step-up")
                 //   #imageLiteral(resourceName: "step-up.png")
                 //when I put the step up image in from the library, no code appeared, just an image symbol
                    

                }
                Button(action: { selectedTab = 0 }) {                    Text("Get Started")
                    //selectedTab navigates from welcome page to first exercise
                    Image(systemName: "arrow.right.circle")
                }
                .font(.title2)
                .padding() 
                .background(
                    RoundedRectangle(cornerRadius: 20)
                 .stroke(Color.gray, lineWidth: 2))
                // added the Get Started button
                .frame(width: 240.0, height: 240.0)
                .scaleEffect(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                // three most commonly used image modifiers
            }
            VStack  {
                HeaderView(selectedTab: $selectedTab, titleText: "Welcome")
                Spacer()
                Button("History") {
                 showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                 HistoryView(showHistory: $showHistory)
                }
                 .padding(.bottom)
            }
        }
    }
}

#Preview {
    WelcomeView(selectedTab: .constant(9))
}
