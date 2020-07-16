//
//  ContentView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 14/07/2020.
//

import SwiftUI

struct FirstPageView: View {
	var body: some View {
		NavigationView{
			List(Service.listData) { item in
				PinChatView(message: item)
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
			
		}
	}
}


struct FirstPage_Previews: PreviewProvider {
	static var previews: some View {
		FirstPageView()
			.environment(\.colorScheme, .dark)
	}
}
