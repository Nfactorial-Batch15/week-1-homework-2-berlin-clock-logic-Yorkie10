//
//  main.swift
//  HW2
//
//  Created by Yerkebulan Sharipov on 04.12.2021.
//

import Foundation
struct BerlinClock {
    
    static func getLampRow(_ totalNumberLamps : Int, _ numberLampsOn: Int, _ lampSymbol: String) -> String {
        var sb : [String] = []
        
        for n in 1...totalNumberLamps {
            sb.append(n <= numberLampsOn ? lampSymbol : "O")
        }
        return sb.joined(separator: "")
    }
    
    static func getHours (_ hour : Int) -> String {
        let hourFirsRow = hour / 5
        var sb : [String] = []
        sb.append(getLampRow(4,  hourFirsRow , "R"))
        return sb.joined(separator: "")
        
    }
    
    static func getHours2 (_ hour: Int) -> String {
        let hourSecondRow = hour % 5
        var sb : [String] = []
        sb.append(getLampRow(4, hourSecondRow, "R"))
        return sb.joined(separator: "")
    }
    
    static func getMinute(_ minute: Int) -> String{
        let minuteFirstRow = minute / 5
        var sb : [String] = []
        sb.append(getLampRow(11, minuteFirstRow, "R"))
        return sb.joined(separator: "")
    }
    
    static func getMinute2(_ minute: Int) -> String{
        let minuteSecondRow = minute % 5
        var sb : [String] = []
        sb.append(getLampRow(4, minuteSecondRow, "R"))
        return sb.joined(separator: "")
    §}
    
    static func getSeconds(_ seconds: Int) -> String{
        return seconds % 2 == 0 ? "Y" : "O"
    }
    
    static func getResult (_ hour: Int, _ minute: Int, _ seconds: Int) -> String {
        let result = getSeconds(seconds) + "\n" + getHours(hour) + "\n" + getHours2(hour) + "\n" + getMinute(minute) + "\n" + getHours2(minute)
        return result
    }
}

func finalResult () {
    print ("Hi there tap hours ")
    let hour = readLine()
    print(" Minutes please")
    let minute = readLine()
    print ("Also minutes please")
    let second = readLine()
    
    guard let hourCheck = hour, let minuteCheck = minute, let secondCheck = second
    else {return}
    
    guard let hourInt = Int (hourCheck) , let minuteInt = Int(minuteCheck), let secondInt = Int(secondCheck)
    else {return}
    
    print(BerlinClock.getResult(_: hourInt, _: minuteInt, _: secondInt))
 
}
finalResult()
        
    
    




