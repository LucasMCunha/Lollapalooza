//
//  Onboarding 2.swift
//  TelasOnboarding
//
//  Created by Victoria on 13/04/23.
//

import SwiftUI

struct Onboarding2: View {
	var body: some View {
		NavigationStack{
			ZStack{
				(Color(red: 0.058823529411764705, green: 0.7019607843137254, blue: 0.6274509803921569)).ignoresSafeArea()
				VStack{
					VStack(alignment: .leading){
						Text("Create your account to unlock exclusive content, plan your schedule, and more!")
							.font(.custom("WorkSansRoman-SemiBold", size: 23))
							.padding(.bottom,55)
						HStack(spacing: 21){
							Image(systemName: "person.fill")
								.font(.title2)
							Text("Sign up with your email or use your Facebook account")
//                                .multilineTextAlignment()
						}
						.padding(.bottom, 68)
						HStack(spacing: 21){
							Image(systemName: "heart.fill")
								.font(.title2)
							Text("Receive personalized recommendations based on your favorite artists")
						}
						.padding(.bottom, 68)
						HStack(spacing: 21){
							Image(systemName: "square.and.arrow.up.fill")
								.font(.title2)
							Text("Connect with other festival-goers and share your experience")
						}
						.padding(.bottom, 81)
					}
					HStack{
						Circle()
							.frame(height: 8)
							.foregroundColor(.white)
						Circle()
							.frame(height: 8)
						Circle()
							.frame(height: 8)
							.foregroundColor(.white)
					}
					.padding(.bottom, 24)
					NavigationLink{
						Onboarding3()
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
				.padding(24)
				.font(.custom("WorkSans-Regular", size: 15))
			}
		}
	}
	
	struct Onboarding2_Previews: PreviewProvider {
		static var previews: some View {
			Onboarding2()
		}
	}
}
