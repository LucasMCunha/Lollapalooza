//
//  MapOnly.swift
//  Movie
//
//  Created by Fabrício Masiero on 12/04/23.
//

import Foundation
import SwiftUI

struct CustomColor {
	static let myColor = Color("Background")
}


struct MapOnly: View {
	@State private var currentAmount = 0.0
	@State private var finalAmount = 1.0
		
	var body: some View {
		GeometryReader{  geometry in
			
			
			ScrollView(.horizontal){
				ScrollView{
					Image("lollaMap2023")
						.resizable()
						.scaledToFit()
						.cornerRadius(40)
						.scaleEffect(finalAmount + currentAmount)
						.gesture(
							MagnificationGesture()
								.onChanged { amount in
									currentAmount = amount - 1
								}
								.onEnded { amount in
									finalAmount += currentAmount
									currentAmount = 0
								})
				}
			}
			.background(CustomColor.myColor)
			.ignoresSafeArea()

		}
	}
}


struct MapOnly_Previews: PreviewProvider {
	static var previews: some View {
		MapOnly()
	}
}
