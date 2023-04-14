//
//  ScheduleData.swift
//  Lollapalooza
//
//  Created by Thiago Parisotto on 13/04/23.
//

import Foundation
import SwiftUI

struct ScheduleStage: Identifiable{
    var id = UUID()
    var name: String
    var agenda: [[Artist]]
    var hours: [String] = ["15:00 PM", "18:00 PM", "21:00 PM"]
    
    var color: Color
}
struct Day: Identifiable, Equatable {
    var name:String
    var id = UUID()
    var index: Int
    var date:String
}

var artists: [Artist] = [Taylor, FlorenceTheMachine, Drake, BillieEilish, NaldoBenny, Jao, Ed, Harry]


var budweiser = ScheduleStage(name: "Budweiser", agenda: [
    [Drake, BillieEilish, Harry],
    [NaldoBenny, Ed],
    [Jao, Taylor]], color: .teal)
var chevrolet = ScheduleStage(name: "Chevrolet's", agenda: [
    [NaldoBenny,Ed],
    [Jao, Taylor],
    [FlorenceTheMachine, BillieEilish, Harry]], color: .yellow)
var perry = ScheduleStage(name: "Perry's", agenda:
                    [[FlorenceTheMachine, Jao],
                     [FlorenceTheMachine, Drake],
                     [ NaldoBenny]], color: .orange)
var adidas = ScheduleStage(name: "Adida's", agenda: [ [Taylor],[BillieEilish],[Drake]], color: .green)
var scheduleStages: [ScheduleStage] = [budweiser,chevrolet,perry,adidas]
var days = [Day(name: "Friday",index: 0, date: "25"),Day(name:"Saturday",index: 1, date:"26"),Day(name:"Sunday",index: 2,date:"27")]
