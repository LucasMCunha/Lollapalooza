//
//  ScheduleArtistView.swift
//  Lollapalooza
//
//  Created by Thiago Parisotto on 13/04/23.
//

import SwiftUI

struct ScheduleArtistView: View {
    @State var artist: Artist
    @State var scheduleStage: ScheduleStage
    @State var index: Int
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 330, height: 100)
                .foregroundColor(scheduleStage.color)
                .cornerRadius(10)
            Image(artist.descriptionImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 100)
                .cornerRadius(10, corners: [.bottomRight, .topRight])
                .contrast(0.8)
                .colorMultiply(.gray)
                .offset(x:+5)
            VStack{
                HStack{
                    Text(artist.name)
                        .font(.system(size: 16))
                        .font(.headline)
                        .bold()
                    Spacer()
                }
                HStack{
                    Text(scheduleStage.hours[index])
                        .fontWeight(.thin)
                        .font(.system(size: 12))
                    Spacer()
                }
                
            }
            .frame(width: 290, height: 90, alignment: .bottomLeading)
            .foregroundColor(.white)
        }
    }
}
struct ScheduleArtistView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleArtistView(artist: Drake, scheduleStage: chevrolet, index: 0)
    }
}
