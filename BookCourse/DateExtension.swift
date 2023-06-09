//
//  DateExtension.swift
//  BookCourse
//
//  Created by Александр Новиков on 09.06.2023.
//

import Foundation

extension Date{
    func formatted(as format: String) -> String {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = format
      return dateFormatter.string(from: self)
    }
}
