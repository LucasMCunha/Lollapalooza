//
//  LoneArtist.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 11/04/23.
//

import SwiftUI

struct LoneArtist: View {
    var artist: Artist
    var body: some View {
        VStack{
            Image(artist.profileImage)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
            Text(artist.name)
                .bold()
                .frame(maxWidth: 100)
            
        }
    }
}

struct LoneArtist_Previews: PreviewProvider {
    static var previews: some View {
        LoneArtist(artist: Artists[0])
    }
}
