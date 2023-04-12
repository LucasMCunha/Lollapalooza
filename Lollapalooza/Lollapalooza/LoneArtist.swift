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
            Image(artist.ProfileImage)
                .resizable()
                //.aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 150, height: 150)
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
