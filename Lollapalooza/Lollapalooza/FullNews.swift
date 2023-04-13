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
        ScrollView{
            Image(new.imagenews)
                .resizable()
                .cornerRadius(16)
                .scaledToFit()
                //.offset(x: 0, y: -335)
            Text(new.title)
                .bold()
                .font(.title)
            Text(new.date)
                .opacity(0.5)
                .offset(x: -150, y: 0)
            Text(new.content)
        }
    }
}

struct FullNews_Previews: PreviewProvider {
    static var previews: some View {
        FullNews(new: news[0])
    }
}
