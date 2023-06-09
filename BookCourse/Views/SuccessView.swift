//
//  SuccessView.swift
//  BookCourse
//
//  Created by Александр Новиков on 09.06.2023.
//

import SwiftUI

struct SuccessView: View {
    @Binding var selectedTab:Int
    @Binding var showSucces : Bool
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            VStack{
                Image(systemName:"hand.wave.fill")
                    .resizeAndFillSY(width: 200, height: 200, color: .purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .bold()
                    .fontWeight(.heavy)
                VStack{
                    Text("Good job completing all four exercises!")
                    Text("Remember tommorow's another day.")
                    Text("So eat well and get some rest.")
                }
                    .foregroundColor(.gray)
                    .font(.title2)

            }
            VStack{
                Spacer()
                Button("Continue"){
                    dismiss()
                    selectedTab = 9
                }.padding(.bottom)
            }
        }
    }
}


struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(selectedTab: .constant(3), showSucces: .constant(false))
    }
}
