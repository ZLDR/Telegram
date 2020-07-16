//
//  PinChatView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 15/07/2020.
//

import SwiftUI

struct PinChatView: View {
	
	var message: ListElement
	
	var body: some View {
		HStack{
			Image(message.photo)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.clipShape(Circle())
				.frame(width: 50, height: 50, alignment: .leading)
			VStack (alignment: .leading){
				HStack {
					Text(message.name)
						.font(.system(size: 16)).bold()
					Spacer()
					Image(message.status).imageScale(.small)
					Text(message.time)
						.font(.subheadline)
						.foregroundColor(.gray)
				}
				HStack {
					VStack(alignment: .leading) {
						Text(message.sender)
							.font(.system(size: 14))
							.padding(.top, -8)
						
						Text(message.text)
							.font(.system(size: 14))
							.foregroundColor(.gray)
							.frame(maxWidth: 260, maxHeight: 40)
					}
					Spacer()
					Image(systemName: "pin.fill")
						.imageScale(.small)
						.rotationEffect(.init(degrees: 40), anchor: .center)
						.foregroundColor(.gray)
				}
			}
		}
	}
}

struct PinChat_Previews: PreviewProvider {
	static var previews: some View {
		List(Service.listData) { item in
			PinChatView(message: item)
				.environment(\.colorScheme, .dark)
		}
		.preferredColorScheme(.dark)
	}
}

