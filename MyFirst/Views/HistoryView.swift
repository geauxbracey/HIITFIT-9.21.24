//
//  HistoryView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/25/24.
//

import SwiftUI

struct HistoryView: View {
    //let today = Date()
   // let yesterday = Date().addingTimeInterval(-86400)
    let history = HistoryStore()
   // let exercises1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
   // let exercises2 = ["Squat", "Step Up", "Burpee"];
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {}) {
             Image(systemName: "xmark.circle")
                    .font(.title)
                    .padding(.trailing)            }
            VStack {
                Text("History")
                    .font(.title)
                    .padding()
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section(
                            header:
                                Text(day.date.formatted(as: "MMM d"))
                                .font(.headline)) {
                                    ForEach(day.exercises, id: \.self) { exercise in
                                        Text(exercise)
                                    }
                                }
                    }
                }
            }
        }  
    }
}

#Preview {
    HistoryView()
}
