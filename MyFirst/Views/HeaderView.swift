//
//  HeaderView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/24/24.
//

import SwiftUI

struct HeaderView: View {
//    let titleText: String
//    var body: some View {
//        VStack{
//            Text (titleText)
//                .font(.largeTitle)
//            HStack{
//                Image(systemName:"hand.wave")
//                Image(systemName:"1.circle")
//                Image(systemName:"2.circle")
//                Image(systemName:"3.circle")
//                Image(systemName:"4.circle")
//            } .font(.title2)
//        }
//    }
//}
//
//
//commented this section out per page 159
    


    
    @Binding var selectedTab: Int
    let titleText: String
    var body: some View {
     VStack {
     Text(titleText)
     .font(.largeTitle)
     HStack {
     ForEach(Exercise.exercises.indices, id: \.self) { index in
     let fill = index == selectedTab ? ".fill" : ""
         //fills in the page number user is currently on
     Image(systemName: "\(index + 1).circle\(fill)")
             .onTapGesture {
              selectedTab = index
                 //user can tap page number in header and app will respond
             }
     }
     }
     .font(.title2)
     }
    }}


#Preview {
    HeaderView(selectedTab: .constant(0), titleText: "Squat")
        .previewLayout(.sizeThatFits)
}
