//
//  ExerciseView.swift
//  MyFirst
//
//  Created by Kaitlyn Bracey on 8/24/24.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @Binding var selectedTab: Int
    //source of truth/State this is binding to exists in ContentView
   
    @State private var rating = 0
    let index : Int
    let interval : TimeInterval = 30
    //timer counts down from 30 seconds to begin video
    
    @State private var showHistory = false
    var exercise : Exercise {
        Exercise.exercises[index]
    }
    //when user clicks history button, the history pops up as a window or modal; boolean
    
    @State private var showSuccess = false
    //when user taps done on last exercise SuccessView comes up
    
    var lastExercise: Bool {
     index + 1 == Exercise.exercises.count
    }
    //checks whether this is the last exercise
    
    var startButton: some View {
     Button("Start Exercise") { }
    }
    var doneButton: some View {
//     Button("Done") {
//     selectedTab = lastExercise ? 9 : selectedTab + 1
//     }
//  above code commented out per page 167
        Button("Done") {
         if lastExercise {
         showSuccess.toggle()
         } else {
         selectedTab += 1
         }
        } 
    }
    //ternary conditional operator
    //moved this start/done button out of the main body to keep code tidy
    
    var body: some View {
            GeometryReader { geometry in
            //provides screen measurements for video
            VStack{
                HeaderView(
                 selectedTab: $selectedTab,
                 titleText: Exercise.exercises[index].exerciseName)
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
               
                HStack(spacing: 150) {
                    startButton
                    doneButton.sheet(isPresented: $showSuccess) {
                        SuccessView(selectedTab: $selectedTab)
                    }
                    //modifier on successview formats pop up neatly for other iOS devices
                }
                .font(.title3)
                .padding()
                //progresses to the next exercise once user presses done
                RatingView(rating: $rating)                    .padding()
                Spacer()
                Button("History") {
                 showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                 HistoryView(showHistory: $showHistory)
                }
                    .padding (.bottom)
            }
        }
    }
}

#Preview {
    ExerciseView(selectedTab: .constant(3), index: 3)
    }

