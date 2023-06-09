//
//  SingleNews.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 11/04/23.
//

import SwiftUI

struct SingleNews: View {
    var new: News
    var body: some View {
        let height = CGFloat(200)
        let width = CGFloat(250)
		
        ZStack{
            Image(new.imagenews)
                .resizable()
                .cornerRadius(16)
                .frame(width: width, height: height)
			    .shadow(radius: 5)

            Rectangle()
				.cornerRadius(16)
                .frame(width: width, height: height / 3)
                .offset(x: 0, y: height/3)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.883))
                //.shadow(radius: 15)
            Text(new.title)
				.offset(x: 0, y: height / 3.5 )
				.frame(width: width * 0.95)
				.font(.headline)
				.lineLimit(2)
               // .bold()
            Text(new.date)
                .offset(x: -86, y: height * 4 / 9 )
                //.bold()
                .opacity(0.7)
				.font(.caption)

        }
    }
}

struct SingleNews_Previews: PreviewProvider {
    static var previews: some View {
        SingleNews(new: news[0])
    }
}
