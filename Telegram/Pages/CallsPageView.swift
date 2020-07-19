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
			HStack{
				CallsPageElement()
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
