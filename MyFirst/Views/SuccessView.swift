//
//  SuccessView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 9/21/24.
//

import SwiftUI


struct SuccessView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var selectedTab: Int
    
    var body: some View {
    ZStack {
      VStack {
        Image(systemName: "hand.raised.fill")
          .resizedToFill(width: 75, height: 75)
          .foregroundColor(.purple)
        Text("High Five!")
          .font(.largeTitle)
          .fontWeight(.bold)
        Text("""
          Good job completing all four exercises!
          Remember tomorrow's another day.
          So eat well and get some rest.
          """)
        .foregroundColor(.gray)
          .multilineTextAlignment(.center)
      }
      VStack {
        Spacer()
          Button("Continue") {
              dismiss()
              selectedTab = 9 
          }
          //when user presses continue after successview pops up, app returns to welcomeview screen
        .padding()
      }
    }
  }
}

struct SuccessView_Previews: PreviewProvider {
  static var previews: some View {
      SuccessView(selectedTab: .constant(3))
  }
}
