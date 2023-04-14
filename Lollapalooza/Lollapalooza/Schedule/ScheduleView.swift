//
//  ScheduleView.swift
//  lolla
//
//  Created by Thiago Parisotto on 11/04/23.
//

import SwiftUI

//To round corners just in the right side of the Rectangle shape
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

//Main schedule struct
struct ScheduleView: View {
    @State var page: Int = 2
    var body: some View {
        NavigationView(){
            ScrollView(showsIndicators: false){
                
                //Picker button for switching for favorite view
                Picker("picker", selection: $page) {
                    Text("My Schedule").tag(1)
                    Text("Lolla's Shedule").tag(2)
                }.pickerStyle(.segmented)
                    .frame(width: 300)
                    .colorMultiply(.gray)
                
                Divider()
                //Schedule
                VStack{
                    ForEach(days) { singleday in
                        DayView(singleday: singleday, page: $page)
                        
                        Divider()
                    }
                }
                .frame(width: 330)
                
            }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
