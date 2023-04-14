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
		HStack{
			ScrollView(showsIndicators: false){
				Text("All artists")
					.font(.title)
				Divider()
					.overlay(Color.black)
					.frame(width: 360)
				ForEach(multipleArtist) { artist in
					HStack{
						LoneArtistHorizontal(artist: artist)
					}
					.frame(width: 360)
					.padding(.vertical, -8)
				}
				.ignoresSafeArea()
			}
			.frame(width: 360)
		}
	}
}

struct ViewAllArtists_Previews: PreviewProvider {
	static var previews: some View {
		ViewAllArtists(multipleArtist: Artists)
	}
}
