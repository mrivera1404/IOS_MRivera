//
//  Date+formatter.swift
//  Tarea#3
//
//  Created by Maria Jose on 4/3/20.
//  Copyright © 2020 Maria Jose. All rights reserved.
//

import UIKit

extension Date {
    
    func getFormatted(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        let localizedDate = formatter.string(from: self)
        return localizedDate
    }
    
}
