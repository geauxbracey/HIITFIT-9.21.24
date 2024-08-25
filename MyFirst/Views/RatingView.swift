//
//  RatingView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/25/24.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            //adding this into an HStack made the ECG symbols show up in a row
            ForEach(0 ..< 5) { _ in
                //replace unused parameter names with an underscore
                Image (systemName: "waveform.path.ecg")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
                //made ECG symbols larger
            }
        }
    }
}

#Preview {
    RatingView()
        .previewLayout(.sizeThatFits)
}
