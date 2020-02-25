//
//  DateFormat.swift
//  FLDateKit
//
//  Created by Vinayak Paul on 25/02/20.
//  Copyright © 2020 Abhishek Thapliyal. All rights reserved.
//

import Foundation

enum DateFormat: String {
    
    case ddMMMyyyy = "dd MMM, yyyy"
    case hhmma = "hh:mm a"
    case yyyyMMdd = "yyyy-MM-dd"
    case ddMMyyyy = "dd-MM-yyyy"
    case yyyyMMddTHHmmssSSSZ = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    case yyyyMMddTHHmmssZ = "yyyy-MM-dd'T'HH:mm:ssZ"
    case yyyyMMddTHHmmssssss = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ"
    case EMMMd = "E, MMM d"
    case EMMMdyyyy = "E MMM d, yyyy"
    case EEEEMMMdyyyy = "EEEE MMM d, yyyy"
    case yyyyMMddhhmmss = "yyyy-MM-dd hh:mm:ss"
    case yyyyMMddHHmmss = "yyyy-MM-dd HH:mm:ss"
    case EEE = "EEE"
    case ddMMM = "dd MMM"
    case MMMMddyyyy = "MMMM dd, yyyy"
    case HH = "HH"
    case dd = "dd"
}
