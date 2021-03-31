//
//  ChatPageElement.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 19/07/2020.
//

import SwiftUI

struct ChatPageElement: View {
	var body: some View {
		VStack(alignment: .trailing ,spacing: 0){
			
			PinChatPageElement()
				.padding(.top, 130)
			
			ForEach(Service.listData){ item in
				VStack{
					HStack(alignment: .center){
						Image(item.photo)
							.resizable()
							.aspectRatio(contentMode: .fill)
							.clipShape(Circle())
							.frame(width: 50, height: 50, alignment: .leading)
							.padding(.leading)
						VStack(alignment: .leading){
							HStack(alignment: .top) {
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
							HStack{
								HStack{
									Text(item.text)
										.font(.system(size: 14))
										.foregroundColor(.gray)
										.frame(width: 260, height: 50, alignment: .topLeading)
										.lineLimit(2)
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
					.background(Color(.black))
				}
			}
		}
	}
	func delete(at offsets: IndexSet) {
		Service.listData.remove(atOffsets: offsets)
	}
}


struct ChatPageElement_Previews: PreviewProvider {
	static var previews: some View {
		ChatPageElement()
			.environment(\.colorScheme, .dark)
	}
}
