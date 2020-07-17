//
//  ChatPage.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 16/07/2020.
//

import SwiftUI

struct ChatPageView: View {
    var body: some View {
		ChatView()
		
    }
}

struct ChatPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatPageView()
			.environment(\.colorScheme, .dark)
    }
}
