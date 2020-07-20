//
//  PinChatPageElement.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 20/07/2020.
//

import SwiftUI

struct PinChatPageElement: View {
	var body: some View {
		VStack(alignment: .trailing ,spacing: 0){
			ForEach(Service2.listData){ item in
				VStack(alignment: .trailing, spacing: 0){
					HStack{
						Image(item.photo)
							.resizable()
							.aspectRatio(contentMode: .fill)
							.clipShape(Circle())
							.frame(width: 50, height: 50, alignment: .leading)
							.padding(.leading)
						VStack(alignment: .leading){
							HStack(alignment: .center) {
								Text(item.name)
									.font(.system(size: 16)).bold()
									.foregroundColor(.white)
									.padding(.top, 10)
								Spacer()
								Image(item.status).imageScale(.small)
								Text(item.time)
									.font(.subheadline)
									.padding(.leading, -5)
									.foregroundColor(.gray)
									.padding(.trailing)
							}
							.padding(.top, 5)
							HStack(alignment: .top){
								HStack(alignment: .center) {
									Text(item.text)
										.font(.system(size: 14))
										.foregroundColor(.gray)
										.frame(width: 260, height: 50, alignment: .topLeading)
										.padding(.top, -10)

									Spacer()
									Image(systemName: item.pinned)
										.rotationEffect(.init(degrees: 45))
										.foregroundColor(.gray)
										.padding(.trailing)
								}
							}
						}
					}
					.background(Color(UIColor.secondarySystemBackground))
				}
			}
		}
	}
}

struct PinChatPageElement_Previews: PreviewProvider {
	static var previews: some View {
		PinChatPageElement()
			.environment(\.colorScheme, .dark)
	}
}
