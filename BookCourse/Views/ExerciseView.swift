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

    @State private var showHistory = false
    @State private var rating = 0
    @State private var showSuccess = false
    @Binding var selectedTab: Int



    var exercise : Exercise{Exercise.exercises[index]}
    var lastExercise: Bool {
      index + 1 == Exercise.exercises.count
    }

    var startButton: some View {
      Button("Start Exercise") { }
    }
    var doneButton: some View {
      Button("Done") {
          if lastExercise{
               showSuccess.toggle()
          }else{
              selectedTab += 1
          }

      }
      .sheet(isPresented: $showSuccess){
          SuccessView(selectedTab: $selectedTab, showSucces: $showSuccess)
              .presentationDetents([.large])
      }
    }

    var body: some View {
        GeometryReader  { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: exercise.exerciseName)
                    .padding(.bottom)
                VideoPlayerView(videoName: exercise.videoName)
                  .frame(height: geometry.size.height * 0.45)
                  
//------------------------------------------------------------
                Text(Date().addingTimeInterval(interval), style: .timer)
                  .font(.system(size: geometry.size.height * 0.07))
//------------------------------------------------------------
                HStack (spacing: 150){
                    startButton
                    doneButton
                }
                .font(.title3)
                .padding()
//------------------------------------------------------------
                RatingView(rating:$rating).padding()
//------------------------------------------------------------

                Spacer()
                Button("History"){
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory){
                    HistoryView(showHistory: $showHistory)
                }
                    .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 1, selectedTab: .constant(1))
    }
}



