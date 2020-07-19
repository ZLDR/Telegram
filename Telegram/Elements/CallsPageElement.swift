//
//  TryPage.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 19/07/2020.
//

import SwiftUI

struct CallsPageElement: View {
	var body: some View {
		List{
			ForEach(Service.listData){ item in
				HStack{
					HStack(alignment: .top){
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
					}
					Spacer()
					HStack{
						Text(item.calldate)
							.font(.system(size: 16))
							.foregroundColor(.gray)
							.frame(maxHeight: 30)
						Image(systemName: "info.circle")
							.imageScale(.large)
					}
				}
			}
			.onDelete(perform: delete)
		}
	}
	func delete(at offsets: IndexSet) {
		Service.listData.remove(atOffsets: offsets)
	}
}

struct TryPage_Previews: PreviewProvider {
	static var previews: some View {
		CallsPageElement()
			.environment(\.colorScheme, .dark)
	}
}
