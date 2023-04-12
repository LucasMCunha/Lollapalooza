//
//  SearchBar.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 12/04/23.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 400, height: 75)
                .foregroundColor(.white)
            HStack{
                VStack{
                    Image(systemName: "person.fill")
                    Text("For me")
                        .frame(width: 75)
                }
                VStack{
                    Image(systemName: "calendar")
                    Text("Schedule")
                        .frame(width: 75)
                }
                VStack{
                    Image(systemName: "map")
                    Text("Map")
                        .frame(width: 75)
                }
                VStack{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                        .frame(width: 75)
                }
                VStack{
                    Image(systemName: "qrcode")
                    Text("Tickets")
                }
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
