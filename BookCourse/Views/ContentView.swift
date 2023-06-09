//
//  ContentView.swift
//  BookCourse
//
//  Created by Александр Новиков on 08.06.2023.
//

import SwiftUI


struct ContentView: View {
    @State private var  selectedTab  = 9
    var body: some View {
      TabView(selection: $selectedTab) {
        WelcomeView(selectedTab: $selectedTab)  // 1
          .tag(9)  // 2
        ForEach(Exercise.exercises.indices, id: \.self) { index in
          ExerciseView( index: index,selectedTab: $selectedTab)
            .tag(index)  // 3
        }
    }
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
