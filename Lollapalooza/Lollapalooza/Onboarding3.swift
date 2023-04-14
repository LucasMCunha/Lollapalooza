//
//  Onboarding3.swift
//  TelasOnboarding
//
//  Created by Victoria on 13/04/23.
//

import SwiftUI

struct Onboarding3: View {
	var body: some View {
		NavigationStack{
			ZStack{
				(Color(red: 0.9411764705882353, green: 0.5450980392156862, blue: 0.2235294117647059).ignoresSafeArea()
				)
				VStack{
					VStack(alignment: .leading){
						Text("Explore the app and get ready for Lollapalooza:")
							.font(.custom("WorkSansRoman-SemiBold", size: 23))
							.padding(.bottom, 67)
						HStack(spacing: 21){
							Image(systemName: "calendar")
								.font(.title2)
							Text("Discover the festival lineup and schedule")
						}
						.padding(.bottom, 49)
						HStack(spacing: 21){
							Image(systemName: "map.fill")
								.font(.title2)
							Text("Find your way with the interactive map")
						}
						.padding(.bottom, 49)
						HStack(spacing: 21){
							Image(systemName: "newspaper.fill")
								.font(.title2)
							Text("Stay up-to-date with the latest news and announcements")
						}
						.padding(.bottom, 84)
					}
					Text("Let's rock Lollapalooza together!")
						.font(.custom("WorkSansRoman-Bold", size: 20))
						.padding(.bottom, 47)
					HStack{
						Circle()
							.frame(height: 8)
							.foregroundColor(.white)
						Circle()
							.frame(height: 8)
							.foregroundColor(.white)
						Circle()
							.frame(height: 8)
					}
					.padding(.bottom, 24)
					
					NavigationLink(destination: TabBar()){
						
						ZStack{
							Rectangle()
								.cornerRadius(8)
								.foregroundColor(.black)
								.frame(width: 342,height: 54)
							Text("Let's go!")
								.foregroundColor(.white)
								.font(.custom("WorkSansRoman-SemiBold", size: 20))
						}
					}
					
				}
				.padding(24)
				.font(.custom("WorkSans-Regular", size: 15))
			}
		}
	}
	
	struct Onboarding3_Previews: PreviewProvider {
		static var previews: some View {
			Onboarding3()
		}
	}
}
