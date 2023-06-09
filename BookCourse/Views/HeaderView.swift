//
//  HeaderView.swift
//  BookCourse
//
//  Created by Александр Новиков on 09.06.2023.
//

import SwiftUI

struct HeaderView: View {
    @Binding var selectedTab: Int  // 1
    let titleText: String
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack { // 2
                ForEach(Exercise.exercises.indices, id: \.self) { index in
                    // 3
                    let fill = index == selectedTab ? ".fill" : ""
                      Image(systemName: "\(index + 1).circle\(fill)")  // 4
                        .onTapGesture {
                            selectedTab = index //tab with finger on number of pages
                        }
                }
                .font(.title2)
            }
        }
    }
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(selectedTab: .constant(0), titleText: "Squat")
            .previewLayout(.sizeThatFits)
    }
}
