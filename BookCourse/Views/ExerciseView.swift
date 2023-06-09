//
//  ExerciseView.swift
//  BookCourse
//
//  Created by Александр Новиков on 08.06.2023.
//

import SwiftUI
import AVKit


let videosNames = ["burpee", "squat", "step-up", "sun-salute"]
let exerciseNames = ["Burpee", "Squat", "Step Up", "Sun Salute"]



struct ExerciseView: View {


    let interval: TimeInterval = 30
    let index: Int
    var exercise : Exercise{Exercise.exercises[index]}


    var body: some View {
        GeometryReader  { geometry in
            VStack {
                HeaderView(titleText: exercise.exerciseName)
                    .padding(.bottom)
                VideoPlayerView(videoName: exercise.videoName)
                  .frame(height: geometry.size.height * 0.45)
                  
//------------------------------------------------------------
                Text(Date().addingTimeInterval(interval), style: .timer)
                  .font(.system(size: geometry.size.height * 0.07))
//------------------------------------------------------------
                Button("Start/Done"){}
                    .font(.title3)
                    .padding()
//------------------------------------------------------------
                RatingView().padding()
//------------------------------------------------------------

                Spacer()
                Button("History"){}
                    .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}



