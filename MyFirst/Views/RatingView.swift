//
//  RatingView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/25/24.
//

import SwiftUI


struct RatingView: View {
    //    var body: some View {
    //        HStack {
    //            //adding this into an HStack made the ECG symbols show up in a row
    //            ForEach(0 ..< 5) { _ in
    //                //replace unused parameter names with an underscore
    //                Image (systemName: "waveform.path.ecg")
    //                    .foregroundColor(.gray)
    //                    .font(.largeTitle)
    //                //made ECG symbols larger
    //            }
    //        }
    //    }
    //}
    //above code commented out per page 162
    
    @Binding var rating: Int
    let maximumRating = 5
    
    let onColor = Color.red
    let offColor = Color.gray
    //rated symbols turn red, unrated symbols remain gray
    
    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1, id: \.self) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(
                        index > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
        .font(.largeTitle)
    }
}

    #Preview {
        RatingView(rating: .constant(3))
            .previewLayout(.sizeThatFits)
    }

