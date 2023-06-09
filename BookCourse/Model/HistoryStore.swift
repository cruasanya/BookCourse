//
//  HistoryStore.swift
//  BookCourse
//
//  Created by Александр Новиков on 09.06.2023.
//

import Foundation


struct ExerciseDay : Identifiable{
    let id = UUID()
    let date:Date
    var exercises: [String] = []
}

struct HistoryStore{
    var exerciseDays: [ExerciseDay] = []
    init(){
        #if DEBUG
        createDevData()
        #endif
    }
}

