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
			VStack{
				ChatPageElement()
			}
			.navigationBarItems(leading:
									EditButton()
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
		}
	}
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatViewPage()
			.environment(\.colorScheme, .dark)
    }
}
