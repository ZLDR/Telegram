//
//  ChatPageElement.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 19/07/2020.
//

import SwiftUI

struct ChatPageElement: View {
	var body: some View {
		VStack(spacing: 0){
			PinChatPageElement()
			ExtractedView()
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

struct ExtractedView: View {
	var body: some View {
		List {
			ForEach(Service.listData, id: \.id){ item in
				HStack{
					Image(item.photo)
						.resizable()
						.aspectRatio(contentMode: .fill)
						.clipShape(Circle())
						.frame(width: 50, height: 50, alignment: .leading)
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
						}
						.padding(.top, -5)
						HStack {
							HStack(alignment: .center) {
								Text(item.text)
									.font(.system(size: 14))
									.foregroundColor(.gray)
									.frame(width: 260, height: 45, alignment: .topLeading)
									.padding(.top, 2)
								Spacer()
								if item.pinned == "pin.fill" {
									Image(systemName: item.pinned)
										.rotationEffect(.init(degrees: 45))
										.foregroundColor(.gray)
										.offset(x: -5)
								}
								else if item.pinned != "pin.fill" {
									Image(systemName: item.pinned)
										.foregroundColor(.white)
										.imageScale(.large)
										.offset(x: -5)
								}
							}
						}
						.padding(.top, -12)
					}
				}
			}
			.onDelete(perform: delete)
		}
	}
	func delete(at offsets: IndexSet) {
		Service.listData.remove(atOffsets: offsets)
	}
}
