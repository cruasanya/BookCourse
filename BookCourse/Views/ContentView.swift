//
//  ContentView.swift
//  BookCourse
//
//  Created by Александр Новиков on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
//                .tabItem {Text("Welcome")}   we have scroll points
            ForEach(Exercise.exercises.indices,id: \.self){index in
                ExerciseView(index: index)
            }
        }
        .padding()
//        .tabViewStyle(PageTabViewStyle())
//        .indexViewStyle(
//            PageIndexViewStyle(backgroundDisplayMode: .always)) it os for dotted list
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
