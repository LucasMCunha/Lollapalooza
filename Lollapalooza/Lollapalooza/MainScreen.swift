//
//  SwiftUIView.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 11/04/23.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        VStack{
            HStack{
                Text("Welcome!")
                    .bold()
                    .font(.title)
                Spacer()
            }
            HStack{
                Text("Artists")
                    .bold()
                Spacer()
                Text("View all")
                    .underline()
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(Artists, id: \.id){ artist in
                        LoneArtist(artist: artist)
                    }
                }
            }
            Spacer()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(stages, id: \.id){ stage in
                        SingleStage(stage: stage)
                    }
                }
            }
            Spacer()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(news, id: \.id){ new in
                        SingleNews(new: new)
                    }
                }
            }
            Divider()
            var firstscreen: Int = 1
            SearchBar(choice: firstscreen)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
