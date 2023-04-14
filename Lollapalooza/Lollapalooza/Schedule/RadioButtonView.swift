//
//  RadioButtonView.swift
//  Lollapalooza
//
//  Created by Thiago Parisotto on 13/04/23.
//

import SwiftUI

struct RadioButtonView: View {
    @State var color1: Color = .white
    @State var color2: Color = .gray
    
    var body: some View {
        HStack{
            Button(action: { changeColor() }, label: {
                ZStack{
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .frame(width: 140, height: 36)
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(color1)
                        .frame(width: 138, height: 34)
                    Text("My Schedule")
                        .foregroundColor(color2)
                        
                }
                .padding(.horizontal, -25)
            })
            Button(action: { changeColor() }, label: {
                ZStack{
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .frame(width: 140, height: 36)
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(color2)
                        .frame(width: 138, height: 34)
                    Text("Lolla's Schedule")
                        .foregroundColor(color1)
                }
            })
        }
        .padding(.horizontal)
        .frame(width: 200, height: 30)
    }
    
    func changeColor() {
        let aux: Color = color1
        color1 = color2
        color2 = aux
        return
    }
}

struct RadioButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonView()
    }
}
