//
//  ExerciseView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/24/24.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
   
    let index : Int
    let interval : TimeInterval = 30
    //timer counts down from 30 seconds to begin video
    
    var exercise : Exercise {
        Exercise.exercises[index]
    }
    var body: some View {
        GeometryReader { geometry in
            //provides screen measurements for video
            VStack{
                HeaderView(titleText: exercise.exerciseName)
                    .padding(.bottom)
                //nested vstack
                if let url = Bundle.main.url(forResource: exercise.videoName, withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.45)
                    //video takes up 45% of the screen
                } else {
                    Text ("Couldn't find \(exercise.videoName).mp4").foregroundColor(.red)
                }
                Text (Date().addingTimeInterval(interval), style: .timer).font(.system(size: geometry.size.height * 0.07))
                //Date() was supposed to add date and time to top of my app but don't see it
                Button("Start/Done"){}
                    .font(.title3)
                    .padding()
            RatingView()
                    .padding()
                Spacer()
                Button("History"){}
                    .padding (.bottom)
            }
        }
    }
}

#Preview {
    ExerciseView(index: 0)
}

