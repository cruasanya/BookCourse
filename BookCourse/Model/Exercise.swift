//
//  Exercise.swift
//  BookCourse
//
//  Created by Александр Новиков on 09.06.2023.
//

import Foundation

struct Exercise{
    let exerciseName :String
    let videoName : String
}

enum ExerciseEnum: String{
    case squat = "Squat"
    case burpee = "Burpee"
    case sunSalute = "Sun Sakute"
    case stepUp = "Step Up"
}

extension Exercise {
  static let exercises = [
    Exercise(
      exerciseName: ExerciseEnum.squat.rawValue,
      videoName: "squat"),
    Exercise(
      exerciseName: ExerciseEnum.stepUp.rawValue,
      videoName: "step-up"),
    Exercise(
      exerciseName: ExerciseEnum.burpee.rawValue,
      videoName: "burpee"),
    Exercise(
      exerciseName: ExerciseEnum.sunSalute.rawValue,
      videoName: "sun-salute")
] }
