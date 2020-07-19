//
//  Try.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 17/07/2020.
//

import SwiftUI

struct Try: View {
	@ObservedObject var chats = Chats()
	
    var body: some View {
		NavigationView{
			List(Service.listData){
				ForEach(ListElement) { item in
					Text(item.name)
				}
			}
			.navigationTitle("Hi")
		}
    }
}

struct Try_Previews: PreviewProvider {
    static var previews: some View {
        Try()
    }
}
