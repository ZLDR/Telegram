//
//  ChatPage.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 16/07/2020.
//

import SwiftUI

struct ChatPageView: View {
    var body: some View {
		TabView{
			ChatView()
				.tabItem {
					Text("Contacts")
					Image(systemName: "person.crop.circle.fill")
						.font(.system(size: 24))
				}
				.tag(0)
			
			ChatView()
				.tabItem {
					Text("Contacts")
					Image(systemName: "phone.fill")
						.font(.system(size: 24))
				}
				.tag(1)
			
			ChatView()
				.tabItem {
					Text("Chats")
					Image(systemName: "message.fill")
						.font(.system(size: 24))
				}
				.tag(2)
			
			ChatView()
				.tabItem {
					Text("Settings")
					Image(systemName: "gear")
						.font(.system(size: 24))
				}
				.tag(3)
		}
    }
}

struct ChatPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatPageView()
			.environment(\.colorScheme, .dark)
    }
}
