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
			ZStack{
				VStack{
					HStack{
							Text("Welcome to")
								.bold()
								.font(.title)
							
						//MARK: fazer a tela de login dps pq eu não tenho a menor ideia de como fazer isso aqui
//						Spacer()
						//cículo para colocar a parte de login aqui
////						Image(systemName: "person.circle")
//							.resizable()
//							.frame(width: 30, height: 30)
						Image("LollapaloozaLogo")
							.resizable()
							.scaledToFit()
						
						Spacer()
					}
					//.padding(.bottom, 40)
					.padding(.leading)
					.padding(.trailing)
					//.padding(.vertical, 20)
					
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
					.padding(.horizontal)
					
					//scroll da primeira parte: os artistas
					
					ScrollView(.horizontal, showsIndicators: false){
						HStack{
							ForEach(Artists, id: \.id){artist in
								//aqui, chama a próxima função que depende do artista pra ir
								NavigationLink{
									ArtistView(artist: artist)
								}label:{
									VStack{
										LoneArtist(artist: artist)
										
									}
								}
								.buttonStyle(.plain)
							}
							.padding(.horizontal, -20)
						}
					}
					//Spacer()
					
					//scroll da segunda parte: os palcos
					HStack{
						Text("Stages")
							.bold()
						Spacer()
					}
					.padding(.horizontal)
					.padding(.top, 15)
					
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
						.padding(.horizontal)
						
					}
					
					//scroll da terceira: as notícias
					HStack{
						Text("News")
							.bold()
						Spacer()
					}
					.padding(.horizontal)
					.padding(.top, 15)
					
					
					//Spacer()
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
							.padding(.leading)
						}
						
					}
					
					
				}
				
				//				let firstscreen: Int = 1
				//				SearchBar(choice: firstscreen)
				
			}

		}

	}
	
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

//house.fill"
//"person.fill"
//"calendar"
//"map.fill"

struct TabBar: View {
	var body: some View {
		TabView {
			MainScreen()
			.tabItem {
				Label("Home", systemImage: "house.fill")
			}
			
			ScheduleView()
				.tabItem {
					Label("Schedule", systemImage: "calendar")
				}
			
			MapView()
			.tabItem {
				Label("Map", systemImage: "map.fill")
				
			}
		}
	}
}
