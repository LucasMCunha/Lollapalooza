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
			ZStack{
				Color(.white)
				Image(artist.profileImage)
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 90, height: 90)
				//                .aspectRatio(contentMode: .fill)
					.clipShape(Circle())
					.overlay {
						Circle().stroke(.white, lineWidth: 3)
						
					}
					.foregroundColor(.white)
			}
	
			.frame(width: 110, height: 110)
			.cornerRadius(100)
			
			Text(artist.name)
				.bold()
				.frame(width: 160, alignment: .center)
				.lineLimit(1)
				.font(.caption)
		}
		
	}
}


struct LoneArtist_Previews: PreviewProvider {
	static var previews: some View {
		LoneArtist(artist: Artists[0])
	}
}
