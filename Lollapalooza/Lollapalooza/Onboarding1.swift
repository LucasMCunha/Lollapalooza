//
//  ContentView.swift
//  TelasOnboarding
//
//  Created by Victoria on 12/04/23.
//

import SwiftUI

struct Onboarding1: View {
	var body: some View {
		NavigationStack{
			ZStack{
				(Color(red: 0.278, green: 0.7568627450980392, blue: 0.9450980392156862)).ignoresSafeArea()
				
				VStack{
					VStack{
						Text("Welcome to the")
							.font(.custom("WorkSansRoman-SemiBold", size: 28))
						
						Image("LollapaloozaLogo")
							.resizable()
							.scaledToFit()
							.padding(.bottom,11)

						//                         VStack{
						HStack{
							Spacer()
							Text("app")
								.font(.custom("WorkSansRoman-SemiBold", size: 28))
								.padding(.bottom,37)
						}
						Text("Get ready for an unforgettable festival experience with the ultimate guide to Lollapalooza.")
							.lineLimit(5)
							.fontWeight(.medium)
							.multilineTextAlignment(.center)
					}
					.padding(.bottom,164)
					
					HStack{
						Circle()
							.frame(height: 8)
						Circle()
							.foregroundColor(.white)
							.frame(height: 8)
						Circle()
							.foregroundColor(.white)
							.frame(height: 8)
					}
					.padding(.bottom,42)
					
					NavigationLink{
						Onboarding2()
					} label: {
						
						ZStack{
							Rectangle()
								.cornerRadius(8)
								.foregroundColor(.black)
								.frame(width: 342,height: 54)
							Text("Next")
								.foregroundColor(.white)
								.font(.custom("WorkSansRoman-SemiBold", size: 20))
						}
						
					}
				}
				.font(.custom("WorkSans-Regular", size: 22))
				.padding(24)
				
			}
		}
		
		
	}
	struct Onboarding1_Previews: PreviewProvider {
		static var previews: some View {
			Onboarding1()
		}
	}
}
