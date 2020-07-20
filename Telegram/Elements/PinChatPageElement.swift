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
							HStack {
								Text(item.name)
									.font(.system(size: 16)).bold()
									.foregroundColor(.white)
									.padding(.top, 10)
								Spacer()
								Image(item.status).imageScale(.small)
									.padding(.top, 10)
								Text(item.time)
									.font(.subheadline)
									.padding(.leading, -5)
									.foregroundColor(.gray)
									.padding(.top, 10)
									.padding(.trailing)
							}
							.padding(.top, 5)
							HStack {
								HStack(alignment: .center) {
									Text(item.text)
										.font(.system(size: 14))
										.foregroundColor(.gray)
										.frame(width: 260, height: 45, alignment: .topLeading)
										.padding(.top, 2)
									Spacer()
									Image(systemName: item.pinned)
										.rotationEffect(.init(degrees: 45))
										.foregroundColor(.gray)
										.padding(.trailing)
								}
							}
							.padding(.top, -12)
						}
					}
					.background(Color(UIColor.secondarySystemBackground))
					Divider()
						.frame(width: 362)
						.foregroundColor(Color(#colorLiteral(red: 0.2392156863, green: 0.2352941176, blue: 0.2549019608, alpha: 1)))

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
