//
//  ViewAllArtists.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 12/04/23.
//

import SwiftUI

//Parte que mostra todos os artistas 
struct ViewAllArtists: View {
    var multipleArtist: [Artist]
    var body: some View {
        ScrollView{
                ForEach(multipleArtist) { artist in
                    HStack{
                    LoneArtist(artist: artist)
                }
                
            }
        }
    }
}

struct ViewAllArtists_Previews: PreviewProvider {
    static var previews: some View {
        ViewAllArtists(multipleArtist: Artists)
    }
}
