//
//  SearchBar.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 12/04/23.
//

import SwiftUI

struct SearchBar: View {
    var choice: Int
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 400, height: 75)
                .foregroundColor(.white)
            HStack{
                VStack{
                    if choice != 1{
                        Image(systemName: "house.fill")
                            .opacity(0.5)
                        Text("Home")
                            .frame(width: 75)
                            .opacity(0.5)
                    }
                    else {
                        Image(systemName: "person.fill")
                        Text("For me")
                            .frame(width: 75)
                    }
                   
                }
                VStack{
                    if choice != 2 {
                        Image(systemName: "calendar")
                            .opacity(0.5)
                        Text("Schedule")
                            .frame(width: 75)
                            .opacity(0.5)
                    }
                    else{
                        Image(systemName: "calendar")
                        Text("Schedule")
                            .frame(width: 75)
                    }
                }
                VStack{
                    if choice != 3{
                        Image(systemName: "map")
                            .opacity(0.5)
                        Text("Map")
                            .frame(width: 75)
                            .opacity(0.5)
                    }
                    else{
                        Image(systemName: "map.fill")
                            Text("Map")
                                .frame(width: 75)
                    }
                }
                
                VStack{
                    if choice != 4{
                        Image(systemName: "qrcode")
                            .opacity(0.5)
                        Text("Tickets")
                            .frame(width: 75)
                            .opacity(0.5)
                    }
                    else{
                        Image(systemName: "qrcode")
                        Text("Tickets")
                            .frame(width: 75)
                    }
                    
                }
            }
        }
		.position(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.maxY - 80)
    }
}

var um: Int = 3

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(choice: um)
    }
}
