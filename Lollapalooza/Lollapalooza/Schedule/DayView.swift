//
//  DayView.swift
//  Lollapalooza
//
//  Created by Thiago Parisotto on 13/04/23.
//

import SwiftUI

struct DayView: View {
    @State var singleday: Day
    @Binding var page: Int
    var body: some View {
        //Day in the week + month + date.
        Text(singleday.name + ", March " + singleday.date + ".")
            .frame(width: 330, height: 20, alignment: .bottomLeading)
            .textCase(.uppercase)
            .font(.headline)
        
        Divider()
        //Iterating throw each stage
        ForEach(scheduleStages) { scheduleStage in
           StageView(singleday: singleday, page: $page, scheduleStage: scheduleStage)
        }
    }
}

//struct DayView_Previews: PreviewProvider {
//    static var previews: some View {
//        DayView(Day)
//    }
//}
