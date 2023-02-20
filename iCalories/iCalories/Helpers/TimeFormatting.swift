//
//  TimeFormatting.swift
//  iCalories
//
//  Created by Enrico Sousa Gollner on 20/01/23.
//

import Foundation

func calcTimeSince(date: Date) -> String{
    let minutes = Int(-date.timeIntervalSinceNow)/60
    let hours = minutes/60
    let days = hours/24
    
    if minutes < 12{
        if minutes == 1 {
            return "\(minutes) minute ago"
        }
        return "\(minutes) minutes ago"
    } else if minutes >= 120 && hours < 48{
        if hours == 1 {
            return "\(hours) hour ago"
        }
        return "\(hours) hours ago"
    } else{
        if days == 1 {
            return "\(days) day ago"
        }
        return "\(days) days ago"
    }
}
