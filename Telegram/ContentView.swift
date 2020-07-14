//
//  ContentView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 14/07/2020.
//

import SwiftUI

struct ContentView: View {
	
	var body: some View {
		NavigationView{
			List{
				ForEach(1..<9) { item in
					HStack{
						Image("UserPic1")
							.resizable()
							.aspectRatio(contentMode: .fill)
							.clipShape(Circle())
							.frame(width: 50, height: 50, alignment: .leading)
						
						VStack (alignment: .leading){
							HStack {
								Text("Calatorii")
									.font(.system(size: 16)).bold()
								Spacer()
								Image("Read").imageScale(.small)
								Text("20.06")
									.font(.subheadline)
									.padding(.leading, -5)
							}
							
							VStack(alignment: .leading) {
								Text("You")
									.font(.system(size: 14))
									.padding(.top, -5)
								Text("Назовите хотя бы одну причину, почему было бы плохо, если бы Сталин первым напал на Гитлера?")
									.font(.system(size: 14))
									.foregroundColor(.gray)
									.frame(maxHeight: 40)
							}
						}
					}
				}
			}
			.navigationBarItems(leading:
									Button("Edit"){}
								,
								trailing:
									Button(action: {
										print("User icon pressed...")
									}) {
										Image(systemName: "square.and.pencil").imageScale(.large)
									}
			)
			.navigationBarTitle("Chats", displayMode: .inline)
			.listStyle(GroupedListStyle())
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.environment(\.colorScheme, .dark)
	}
}

