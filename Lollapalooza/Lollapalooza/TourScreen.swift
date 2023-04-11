//
//  TourScreen.swift
//  Lollapalooza
//
//  Created by Lucas Cunha on 11/04/23.
//

import SwiftUI

struct MusicImages: View{
    var Music : Music
    var artist : Artist
    var body : some View{
        HStack{
            Image(Music.image)
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
            VStack{
                Text(Music.title)
                    .frame(width: 120, height: 0, alignment: .center)
                Text(artist.name)
            }
            Text(Music.time)
                .foregroundColor(.gray)
        }
        .frame(width: 420, height: 60, alignment: .center)
    }
}


struct TourScreen: View {
    var body: some View {
    var artist: Artist = Artist(name: "Ed Sheeran", profileImage: "Ed1", descriptionImage: "Ed2", description: "Edward Christopher Sheeran MBE, mais conhecido como Ed Sheeran (Halifax, 17 de fevereiro de 1991) é um cantor, compositor, produtor e ator britânico.  Ele se casou com Cherry Seaborn em janeiro de 2019 e hoje o casal tem duas filhas chamadas Lyra Antarctica Seaborn Sheeran e Jupiter Seaborn Sheeran. No início de 2012, Sheeran lançou um extended play independente, que chamou a atenção de Elton John e Jamie Foxx. Ele, em seguida, assinou contrato com a Asylum Records. Seu álbum de estréia, + (plus) (2011), contendo os singles 'The A Team', 'You Need Me, I Don't Need You', 'Lego House' e 'Drunk' foi disco de platina quíntuplo no Reino Unido. Em 2012, ele ganhou dois Brit Awards para Melhor Artista Solo Britânico Masculino e Breakthrough Act britânico. 'The A Team' ganhou o prêmio Ivor Novello de Melhor Canção Musicalmente e liricamente. Em 2014 ele foi nomeado para Best New Artist na 56ª Annual Grammy Awards.", musics: [Music(title: "Shape Of You",time: "3:53",image: "Ed3"), Music(title: "Eraser",time: "3:47",image: "Ed3"), Music(title: "Castle on the Hill",time: "4:21",image: "Ed3"), Music(title: "Perfect",time: "4:23",image: "Ed3"), Music(title: "Barcelona",time: "3:10",image: "Ed3")],favorite: false, tourName: "÷ Tour", tour: #"The ÷ Tour (pronounced "Divide Tour") was the third world concert tour by English singer-songwriter Ed Sheeran, in support of his third studio album, ÷ (2017) (pronounced "divide"). Comprising 260 shows, it officially began on 16 March 2017, in Turin, Italy and ended on 26 August 2019, in Ipswich, England. Ticket sales started on 2 February 2017. The tour set world records for the highest-grossing concert tour and the most tickets sold by a tour."#)
        
        
        VStack(alignment: .leading){
            ZStack{
                Image(artist.descriptionImage)
                    .resizable()
                    .frame(width: 500, height: 300, alignment: .center)
                    .cornerRadius(100)
                    .offset(x: 0,y:-60)
                
                
                if (artist.favorite == true){
                    Image(systemName: "heart.fill")
                        .resizable()
                        .offset(x: 150,y:-160)
                        .foregroundColor(.pink)
                        .frame(width: 30, height: 30, alignment: .center)
                }
                else{
                    Image(systemName: "heart")
                        .resizable()
                        .offset(x: 150,y:-160)
                        .foregroundColor(.pink)
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }
            Text (artist.tourName)
                .bold()
                .font(.title)
                .offset(x: 80,y:-60)
            Text (artist.tour)
                .offset(x: 60,y:-60)
            Text("SetList")
                .offset(x: 60,y:-50)
                .font(.title3)
                .bold()
            Divider()
                .overlay(Color.black)
                .offset(x: 55,y:-60)
            ScrollView{
                ForEach(artist.musics, id:\.id) { m in
                    MusicImages(Music: m,artist: artist)
                }
            }
            .offset(x: 0,y:-60)
        }
    }
}

struct TourScreen_Previews: PreviewProvider {
    static var previews: some View {
        TourScreen()
    }
}
