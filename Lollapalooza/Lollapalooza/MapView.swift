//
//  MapView.swift
//  Movie
//
//  Created by Fabrício Masiero on 10/04/23.
//

import SwiftUI

struct MapView: View {
	@State private var currentAmount = 0.0
	@State private var finalAmount = 1.0
	
	var body: some View {
		NavigationStack{
			ZStack{
				ScrollView(.horizontal, showsIndicators: false){
					ScrollView(showsIndicators: false){
						Image("zoomMap")
							.resizable()
							.scaledToFit()
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
				ZStack{
					NavigationLink(destination: MapOnly()){
						ZStack{
							Circle()
								.fill(.white)
								.frame(maxWidth: 60, maxHeight: 60)
								.opacity(0.8)
							
							Image(systemName: "viewfinder")
								.resizable()
								.frame(maxWidth: 30, maxHeight: 30)
								.foregroundColor(.black)
							
						}
					}
					}
					.offset(x: 140, y: 200)
				
			}
			.cornerRadius(30)
			.edgesIgnoringSafeArea(.top)
			
			//			NavigationLink(destination: MapOnly()){
			//				VStack{
			//					ZStack{
			//						VStack{
			//							Image("zoomMap")
			//								.resizable()
			//								.scaledToFill()
			//								.cornerRadius(30)
			//						}
			//						ZStack{
			//							Circle()
			//								.fill(.white)
			//								.frame(maxWidth: 60, maxHeight: 60)
			//								.opacity(0.8)
			//
			//
			//							Image(systemName: "viewfinder")
			//								.resizable()
			//								.frame(maxWidth: 30, maxHeight: 30)
			//								.foregroundColor(.black)
			//
			//						}
			//						.offset(x: 140, y: 180)
			//					}
			//				}
			//				.ignoresSafeArea()
			//			}
			
			ScrollView(showsIndicators: false){
				VStack{
					Text("Lollapalooza's 2023 Map")
						.frame(maxWidth: .infinity, alignment: .leading)
						.bold()
						.font(.title2)
						.padding()
					
					Divider()
						.frame(width: 360)
						.overlay(Color.black)
					
					Text("Captions")
						.font(.title3)
						.bold()
						.frame(maxWidth: .infinity, alignment: .leading)
						.padding(.horizontal)
					
					Text("Transport")
						.font(.title3)
						.frame(maxWidth: .infinity, alignment: .leading)
						.padding(.horizontal)
					
					
					
					HStack{
						HStack{
							VStack{
								Image("apps")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("bus")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("pcd")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
							}
							
							VStack{
								Text("Apps")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Bus Station")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Accessibility")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
							}
						}
						
						HStack{
							VStack{
								Image("subway")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("taxi")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("transport")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
							}
							
							VStack{
								Text("Subway")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Cab")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Lolla Transfer")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
							}
						}
					}
				}
				
				Divider()
					.frame(width: 360)
					.overlay(Color.black)
					.padding()
				VStack{
					Text("General")
						.font(.title3)
						.frame(maxWidth: .infinity, alignment: .leading)
						.padding(.horizontal)
					
					HStack{
						HStack{
							VStack{
								Image("Booth")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("Tickets")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								
							}
							
							VStack{
								Text("Booth")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Tickets")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
							}
						}
						
						HStack{
							VStack{
								Image("Accessibility")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("Info")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
							}
							
							VStack{
								Text("Accessibility")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Info")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
							}
						}
					}
				}
				
				VStack{
					Divider()
						.frame(width: 360)
						.overlay(Color.black)
						.padding()
					
					Text("Common Use Areas")
						.font(.title3)
						.frame(maxWidth: .infinity, alignment: .leading)
						.padding(.horizontal)
					
					HStack {
						HStack{
							VStack{
								Image("Wc")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("MedicalCare")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("Food")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
							}
							
							VStack{
								Text("WC")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Medical Care")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Food Shops")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
							}
						}
						
						HStack{
							VStack{
								Image("Rock&RecycleByBraskem")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								
								Image("BradescoWaterStation")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								
								Image("BradescoSqueezes")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
							}
							
							VStack{
								Text("Rock & Recycle By Braskem")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Bradesco Water Station")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Bradesco Squeezes")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
							}
						}
					}
				}
				
				Divider()
					.frame(width: 360)
					.overlay(Color.black)
					.padding()
				
				VStack{
					Text("Services")
						.font(.title3)
						.frame(maxWidth: .infinity, alignment: .leading)
						.padding(.horizontal)
					
					HStack{
						HStack{
							VStack{
								Image("Atm")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("Cash")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								
							}
							
							VStack{
								Text("ATM")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Cashier")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
							}
						}
						
						HStack{
							VStack{
								Image("LollaLockers")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
								Image("LostFounds")
									.resizable()
									.frame(maxWidth: 50, maxHeight: 50)
							}
							
							VStack{
								Text("Lolla Lockers")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
								Text("Lost & Founds")
									.frame(maxWidth: 130, maxHeight: 90, alignment: .leading)
							}
						}
					}
				}
				
			}
			.padding(.top, -8)
			.padding(.bottom, 30)
			.ignoresSafeArea()
			.frame(maxHeight: 290)
		}
	}
}

struct MapView_Previews: PreviewProvider {
	static var previews: some View {
		MapView()
	}
}
