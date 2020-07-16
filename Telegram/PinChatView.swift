//
//  PinChatView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 15/07/2020.
//

import SwiftUI

struct PinChatView: View {
	@ObservedObject var message = Message()
	
	init() {
		UITableView.appearance().tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
	}
	var body: some View {
		List(0 ..< 9){ item in
			Image(message.Photo)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.clipShape(Circle())
				.frame(width: 50, height: 50, alignment: .leading)
			VStack (alignment: .leading){
				HStack {
					Text(message.Name)
						.font(.system(size: 16)).bold()
					Spacer()
					Image(message.Status).imageScale(.small)
					Text(message.Time)
						.font(.subheadline)
						.padding(.leading, -5)
						.foregroundColor(.gray)
				}
				HStack {
					VStack(alignment: .leading) {
						Text(message.Sender)
							.font(.system(size: 14))
							.padding(.top, -10)
						Text(message.Text)
							.font(.system(size: 14))
							.foregroundColor(.gray)
							.frame(maxHeight: 40)
					}
					Image(systemName: "pin.fill").imageScale(.small)
						.rotationEffect(.init(degrees: 40), anchor: .center)
						.foregroundColor(.gray)
				}
			}
		}
	}
}

struct PinChatView_Previews: PreviewProvider {
    static var previews: some View {
        PinChatView()
			.environment(\.colorScheme, .dark)
    }
}
