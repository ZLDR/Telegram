//
//  CallsPageView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 17/07/2020.
//

import SwiftUI

struct CallsPageView: View {
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
						Text(item.name)
							.font(.system(size: 16)).bold()
							.foregroundColor(.white)
						Text(item.callstatus)
							.font(.system(size: 16))
							.foregroundColor(.gray)
					}
					Spacer()
					HStack {
						Text(item.calldate)
							.font(.system(size: 16))
							.foregroundColor(.gray)
							.frame(maxHeight: 40)
						Image(systemName: "info.circle")
							.imageScale(.alrge)
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
			Image(systemName: "phone.arrow.up.right").imageScale(.large)
			}
			)
			.navigationBarTitle("Calls", displayMode: .inline)
			.listStyle(PlainListStyle())
			.environment(\.defaultMinListRowHeight, 90)
		}
	}
}

struct CallsPageView_Previews: PreviewProvider {
    static var previews: some View {
		
        CallsPageView()
			.environment(\.colorScheme, .dark)
    }
}
