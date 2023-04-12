//
//  ScheduleView.swift
//  lolla
//
//  Created by Thiago Parisotto on 11/04/23.
//

import SwiftUI


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct Stage: Identifiable{
    var id = UUID()
    var name: String
    var agenda: [[Artist]]
    var hours: [String] = ["15:00 PM", "18:00 PM", "21:00 PM"]
    
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
    [Jao, Taylor]], color: .teal)
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
    @State private var showFavorites = false
    @State private var showAll = true
    var body: some View {
        ScrollView(showsIndicators: false){
            HStack {
                Toggle("My Schedule", isOn: $showFavorites)
                Toggle("Lolla's Schedule", isOn: $showAll)
            }
            .toggleStyle(.button)
            .tint(.black)
            
            
            Divider()
            VStack{
                ForEach(days) { singleday in
                    Text(singleday.name + ", March " + singleday.date + ".")
                        .frame(width: 330, height: 20, alignment: .bottomLeading)
                        .textCase(.uppercase)
                        .font(.headline)
                    Divider()
                    ForEach(stages) { stage in
                        Text(stage.name)
                            .frame(width: 330, height: 20,alignment: .bottomLeading)
                            .font(.headline)
                            .bold()
                            .foregroundColor(stage.color)
                            .padding(.top, 10)
                        ForEach(0..<stage.agenda[singleday.index].count) { index in
                            if((showFavorites && stage.agenda[singleday.index][index].favorite == true) || !showFavorites){
                                ZStack{
                                    Rectangle()
                                        .frame(width: 330, height: 100)
                                        .foregroundColor(stage.color)
                                        .cornerRadius(10)
                                    Image(stage.agenda[singleday.index][index].descriptionImage)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 320, height: 100)
                                        .cornerRadius(10, corners: [.bottomRight, .topRight])
                                        .contrast(0.8)
                                        .colorMultiply(.gray)
                                        .offset(x:+5)
                                    VStack{
                                        HStack{
                                            Text(stage.agenda[singleday.index][index].name)
                                                .font(.system(size: 16))
                                                .font(.headline)
                                                .bold()
                                            Spacer()
                                        }
                                        HStack{
                                            Text(stage.hours[index])
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
                    }
                    Divider()
                }
            }
            .frame(width: 330)
        }
    }
    func buttonClick(){
        if(!showFavorites){
            showFavorites = true
        }
        else{
            showFavorites = false
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
