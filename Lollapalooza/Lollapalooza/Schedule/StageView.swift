//
//  StageView.swift
//  Lollapalooza
//
//  Created by Thiago Parisotto on 13/04/23.
//

import SwiftUI

struct StageView: View {
    @State var singleday: Day
    @Binding var page: Int
    @State var scheduleStage: ScheduleStage
    var body: some View {
        Text(scheduleStage.name)
            .frame(width: 330, height: 20,alignment: .bottomLeading)
            .font(.headline)
            .bold()
            .foregroundColor(scheduleStage.color)
            .padding(.top, 10)
        ForEach(0..<scheduleStage.agenda[singleday.index].count) { index in
            if((page == 1 && scheduleStage.agenda[singleday.index][index].favorite == true) || page == 2){
                NavigationLink{
                    ArtistView(artist: scheduleStage.agenda[singleday.index][index])
                } label:{
                    var scheduleArtist = scheduleStage.agenda[singleday.index][index]
                    ScheduleArtistView(artist: scheduleArtist, scheduleStage: scheduleStage, index: index)
                }
            }
        }
    }
}
