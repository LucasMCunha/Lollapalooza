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
            Text(String(Music.number))
                .bold()
                .font(.title2)
                .offset(x:-10, y:0)
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
        .offset(x:-20, y:0)
    }
}


struct TourView: View {
    var artist: Artist
    var body: some View {
        VStack(alignment: .leading){
            ZStack{
                Image(artist.descriptionImage)
                    .resizable()
                    .frame(width: 500, height: 300,
                           alignment: .center)
                    .cornerRadius(100)
                    .offset(x: -60, y:0)
                
                
                if (artist.favorite == true){
                    Image(systemName: "heart.fill")
                        .resizable()
                        .offset(x: 90,y:-160)
                        .foregroundColor(.pink)
                        .frame(width: 30, height: 30, alignment: .center)
                }
                else{
                    Image(systemName: "heart")
                        .resizable()
                        .offset(x: 90,y:-100)
                        .foregroundColor(.pink)
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }
            Text (artist.tourName)
                .bold()
                .font(.title)
            Text (artist.tour)
            Text("SetList")
                .font(.title3)
                .bold()
            Divider()
                .overlay(Color.black)
                .offset(x: -5,y:0)
            ScrollView{
                ForEach(artist.musics, id:\.id) { m in
                    MusicImages(Music: m,artist: artist)
                }
            }
        }
        .offset(x: 60,y:-60)
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct TourView_Previews: PreviewProvider {
    static var previews: some View {
        TourView(artist: Artist(name: "Ed Sheeran", profileImage: "Ed1", descriptionImage: "Ed2", description: "Edward Christopher Sheeran MBE, mais conhecido como Ed Sheeran (Halifax, 17 de fevereiro de 1991) é um cantor, compositor, produtor e ator britânico.  Ele se casou com Cherry Seaborn em janeiro de 2019 e hoje o casal tem duas filhas chamadas Lyra Antarctica Seaborn Sheeran e Jupiter Seaborn Sheeran. No início de 2012, Sheeran lançou um extended play independente, que chamou a atenção de Elton John e Jamie Foxx. Ele, em seguida, assinou contrato com a Asylum Records. Seu álbum de estréia, + (plus) (2011), contendo os singles 'The A Team', 'You Need Me, I Don't Need You', 'Lego House' e 'Drunk' foi disco de platina quíntuplo no Reino Unido. Em 2012, ele ganhou dois Brit Awards para Melhor Artista Solo Britânico Masculino e Breakthrough Act britânico. 'The A Team' ganhou o prêmio Ivor Novello de Melhor Canção Musicalmente e liricamente. Em 2014 ele foi nomeado para Best New Artist na 56ª Annual Grammy Awards.", musics: [Music(title: "Shape Of You",time: "3:53",image: "Ed3", number: 1), Music(title: "Eraser",time: "3:47",image: "Ed3", number: 2), Music(title: "Castle on the Hill",time: "4:21",image: "Ed3", number: 3), Music(title: "Perfect",time: "4:23",image: "Ed3", number: 4), Music(title: "Barcelona",time: "3:10",image: "Ed3", number: 5)],favorite: false, tourName: "÷ Tour", tour: #"The ÷ Tour (pronounced "Divide Tour") was the third world concert tour by English singer-songwriter Ed Sheeran, in support of his third studio album, ÷ (2017) (pronounced "divide"). Comprising 260 shows, it officially began on 16 March 2017, in Turin, Italy and ended on 26 August 2019, in Ipswich, England. Ticket sales started on 2 February 2017. The tour set world records for the highest-grossing concert tour and the most tickets sold by a tour."#))
    }
}
