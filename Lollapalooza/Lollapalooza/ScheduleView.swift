//
//  ScheduleView.swift
//  lolla
//
//  Created by Thiago Parisotto on 11/04/23.
//

import SwiftUI


struct Stage: Identifiable{
    var id = UUID()
    var name: String
    var agenda: [[Artist]]
    
    var color: Color
}
struct Day: Identifiable {
    var name:String
    var id = UUID()
    var index: Int
    var date:String
}

var artists: [Artist] = [Taylor, FlorenceTheMachine, Drake, BillieEilish, NaldoBenny, Jao, Ed, Harry]


var budweiser = Stage(name: "Budweiser", agenda: [
    [Drake, BillieEilish, Harry],
    [NaldoBenny, Ed],
    [Jao, Taylor]], color: .blue)
var chevrolet = Stage(name: "Chevrolet's", agenda: [
    [NaldoBenny,Ed],
    [Jao, Taylor],
    [FlorenceTheMachine, BillieEilish, Harry]], color: .yellow)
var perry = Stage(name: "Perry's", agenda:
                    [[FlorenceTheMachine, Jao],
                     [FlorenceTheMachine, Drake],
                     [ NaldoBenny]], color: .orange)
var adidas = Stage(name: "Adida's", agenda: [ [Taylor],[BillieEilish],[Drake]], color: .green)
var stages: [Stage] = [budweiser,chevrolet,perry,adidas]
var days = [Day(name: "Friday",index: 0, date: "25"),Day(name:"Saturday",index: 1, date:"26"),Day(name:"Sunday",index: 2,date:"27")]

struct ScheduleView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                ForEach(days) { singleday in
                    Text(singleday.name + ", March " + singleday.date)
                        .textCase(.uppercase)
                    Divider()
                    ForEach(stages) { stage in
                        Text(stage.name)
                            .foregroundColor(stage.color)
                        ForEach(stage.agenda[singleday.index]) { artist in
                            ZStack{
                                Rectangle()
                                    .frame(width: 300, height: 100)
                                    .foregroundColor(stage.color)
                                    .cornerRadius(10)
                                Image(artist.DescriptionImage)
                                Text(artist.name)
                            }
                        }
                    }
                    Divider()
                }
            }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}

