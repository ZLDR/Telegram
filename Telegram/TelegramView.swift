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
			ContactsPageView()
				.tabItem {
					Text("Contacts")
						.font(.body)
					Image(systemName: "person.crop.circle.fill")
						.font(.system(size: 23))
				}
				.tag(0)
			
			CallsPageView()
				.tabItem {
					Text("Calls")
						.font(.body)
					Image(systemName: "phone.fill")
						.font(.system(size: 23))
				}
				.tag(1)
			
			ChatViewPage()
				.tabItem {
					Text("Chats")
						.font(.body)
					Image(systemName: "message.fill")
						.font(.system(size: 23))
				}
				.tag(2)
			
			SettingsPageView()
				.tabItem {
					Text("Settings")
						.font(.body)
					Image(systemName: "gear")
						.font(.system(size: 23))
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
