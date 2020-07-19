//
//  ChatView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 15/07/2020.
//

import SwiftUI

struct ChatViewPage: View {
	var body: some View {
		NavigationView{
			List(Service.listData) { item in
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
							Spacer()
							Image(item.status).imageScale(.small)
							Text(item.time)
								.font(.subheadline)
								.padding(.leading, -5)
								.foregroundColor(.gray)
						}
						.padding(.top, -5)
						HStack {
							HStack {
								Text(item.text)
									.font(.system(size: 14))
									.foregroundColor(.gray)
									.frame(maxHeight: 40)
								Spacer()
								Image(systemName: item.pinned)
									.rotationEffect(.init(degrees: 45))
									.foregroundColor(.gray)
							}
							.frame(alignment: .leading)
						}
						.padding(.top, -12)
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
			.listStyle(PlainListStyle())
			.environment(\.defaultMinListRowHeight, 90)
		}
	}
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatViewPage()
			.environment(\.colorScheme, .dark)
    }
}
