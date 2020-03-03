//
//  String+Date.swift
//  FLDateKitDemo
//
//  Created by Abhishek Thapliyal on 03/03/20.
//  Copyright © 2020 Abhishek Thapliyal. All rights reserved.
//

import Foundation

public extension String {
    
    func getDate(currentformat: String) -> Date? {
        let formatter = Date().getDateFormatter(format: currentformat)
        return formatter.date(from: self)
    }
    
    func getFormattedDateString(currentformat: String, desiredFormat: String) -> String? {
        let formatter = Date().getDateFormatter(format: currentformat)
        guard let date = formatter.date(from: self) else { return nil }
        formatter.dateFormat = desiredFormat
        return formatter.string(from: date)
    }
    
}
