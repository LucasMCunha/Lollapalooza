//
//  FullNews.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 12/04/23.
//

import SwiftUI


struct FullNews: View {
    var new: News
    var body: some View {
		ScrollView(showsIndicators: false){
            Image(new.imagenews)
                .resizable()
				.frame(height: 300)
				.ignoresSafeArea()
                .cornerRadius(16)

                //.offset(x: 0, y: -335)
            Text(new.title)
                .bold()
                .font(.title)
				.frame(width: 360, alignment: .leading)
				.padding(.horizontal)

            Text(new.date)
                .opacity(0.5)
                .offset(x: -132, y: 0)
				.padding(.bottom, 5)
            Text(new.content)
				.padding(.horizontal)
        }
//		.padding(.horizontal)
    }
}

struct FullNews_Previews: PreviewProvider {
    static var previews: some View {
        FullNews(new: news[1])
    }
}
