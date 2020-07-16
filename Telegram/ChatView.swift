//
//  ChatView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 15/07/2020.
//

import SwiftUI

struct ChatView: View {
	
	init() {
		UITableView.appearance().tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
	}
	
	var body: some View {
		HStack{
			Image("UserPic1")
				.resizable()
				.aspectRatio(contentMode: .fill)
				.clipShape(Circle())
				.frame(width: 50, height: 50, alignment: .leading)
			VStack (alignment: .leading){
				HStack {
					Text("Calatorii")
						.font(.system(size: 16)).bold()
						.foregroundColor(.white)
					Spacer()
					Image("Read").imageScale(.small)
					Text("20.06")
						.font(.subheadline)
						.padding(.leading, -5)
						.foregroundColor(.gray)
				}
				HStack {
					VStack(alignment: .leading) {
						Text("You")
							.font(.system(size: 14))
							.padding(.top, -10)
							.foregroundColor(.white)
						Text("Назовите хотя бы одну причину, почему было бы плохо, если бы Сталин первым напал на Гитлера?")
							.font(.system(size: 14))
							.foregroundColor(.gray)
							.frame(maxHeight: 40)
					}
				}
			}
		}
		.background(Color(UIColor.black))
		.edgesIgnoringSafeArea(.all)
	}
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}