//
//  ChatPage.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 16/07/2020.
//

import SwiftUI

struct TelegramView: View {
    var body: some View {
		TabView{
			ChatViewPage()
				.tabItem {
					Text("Contacts")
					Image(systemName: "person.crop.circle.fill")
						.font(.system(size: 24))
				}
				.tag(0)
			
			ChatViewPage()
				.tabItem {
					Text("Contacts")
					Image(systemName: "phone.fill")
						.font(.system(size: 24))
				}
				.tag(1)
			
			ChatViewPage()
				.tabItem {
					Text("Chats")
					Image(systemName: "message.fill")
						.font(.system(size: 24))
				}
				.tag(2)
			
			ChatViewPage()
				.tabItem {
					Text("Settings")
					Image(systemName: "gear")
						.font(.system(size: 24))
				}
				.tag(3)
		}
    }
}

struct TelegramView_Previews: PreviewProvider {
    static var previews: some View {
        TelegramView()
			.environment(\.colorScheme, .dark)
    }
}
