//
//  ImageExtension.swift
//  BookCourse
//
//  Created by Александр Новиков on 09.06.2023.
//

import SwiftUI

extension Image{
    func resizeToFill(width:CGFloat, height: CGFloat)->some View{
        return self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)

    }
    func resizeAndFillSY(width:CGFloat,height: CGFloat,color:Color)->some View{
        return self
            .resizable()
            .frame(width: width, height: height)
            .foregroundColor(color)
        
    }
}
