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
        ZStack{
            Color(.white)
            Image(artist.profileImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.black, lineWidth: 3)
                
                }
                .foregroundColor(.white)
            }
            .frame(width: 150, height: 150)
            .cornerRadius(100)
        Text(artist.name)
            .bold()
            .frame(maxWidth: 100)
        
    }
}


struct LoneArtist_Previews: PreviewProvider {
    static var previews: some View {
        LoneArtist(artist: Artists[0])
    }
}
