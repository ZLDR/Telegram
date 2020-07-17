//
//  PinChatView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 15/07/2020.
//

import SwiftUI

struct ListChatView: View {
	
	var message: ListElement
	
	var body: some View {
		HStack{
			Image(message.photo)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.clipShape(Circle())
				.frame(width: 50, height: 50, alignment: .leading)
			VStack{
				HStack {
					Text(message.name)
						.font(.system(size: 16)).bold()
					Spacer()
					Image(message.status).imageScale(.small)
					Text(message.time)
						.font(.subheadline)
						.foregroundColor(.gray)
				}
				.padding(.bottom, -10)
				HStack {
					VStack(alignment: .leading) {
						Text(message.text)
							.font(.system(size: 14))
							.foregroundColor(.gray)
							.frame(width: 265, height: 40,alignment: .leading)
					}
					.multilineTextAlignment(.leading)
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

struct ListChat_Previews: PreviewProvider {
	static var previews: some View {
		List(Service.listData) { item in
			ListChatView(message: item)
				.environment(\.colorScheme, .dark)
		}
		.preferredColorScheme(.dark)
	}
}
