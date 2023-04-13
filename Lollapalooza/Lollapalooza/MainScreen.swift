//
//  SwiftUIView.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 11/04/23.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        
        //nativagationStack que faz todos os navigation links funcionarem
        NavigationStack{
            VStack{
                HStack{
                    Text("Welcome!")
                        .bold()
                        .font(.title)
                    //MARK: fazer a tela de login dps pq eu não tenho a menor ideia de como fazer isso aqui
                    Spacer()
                    //cículo para colocar a parte de login aqui
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                HStack{
                    Text("Artists")
                        .bold()
                    Spacer()
                    
                    //link para ver todos os artistas
                    NavigationLink{
                        ViewAllArtists(multipleArtist: Artists)
                    }label:{
                        Text("View all")
                            .underline()
                    }
                    .buttonStyle(.plain)
                }
                
                //scroll da primeira parte: os artistas
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                            ForEach(Artists, id: \.id){artist in
                                //aqui, chama a próxima função que depende do artista pra ir
                                NavigationLink{
                                    Fillerforlaterviews()
                                }label:{
                                    VStack{
                                        LoneArtist(artist: artist)
                                    }
                                }
                                .buttonStyle(.plain)
                            }
                        }
                    }
                Spacer()
                
                //scroll da segunda parte: os palcos
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(stages, id: \.id){ stage in
                            NavigationLink{
                                Fillerforlaterviews()
                            }label:{
                                SingleStage(stage: stage)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                
                //scroll da terceira: as notícias
                Spacer()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(news, id: \.id){ new in
                            NavigationLink{
                               FullNews(new: new)
                            }label:{
                                    SingleNews(new: new)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                Divider()
                //Isso aqui é para a opacidade
                //FAZER ISSO EM TODAS AS ABAS QUE FICAM ALI EMBAIXO
                let firstscreen: Int = 1
                SearchBar(choice: firstscreen)
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
