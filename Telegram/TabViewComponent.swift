//
//  TabView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 16/07/2020.
//

import SwiftUI

struct TabViewComponent: View {
	var body: some View {
		TabView {
			FirstPageView()
				.tabItem {
					Text(Constants.TabBarItemText.tabBar1)
					Image(systemName: Constants.TabBarImageName.tabBar1)
						.font(.system(size: 24))
				}.tag(0)
			
			ChatPageView()
				.tabItem {
					Text(Constants.TabBarItemText.tabBar2)
					Image(systemName: Constants.TabBarImageName.tabBar2)
						.font(.system(size: 24))
				}.tag(1)
			
			ChatPageView()
				.tabItem {
					Text(Constants.TabBarItemText.tabBar3)
					Image(systemName: Constants.TabBarImageName.tabBar3)
						.font(.system(size: 24))
				}.tag(2)
			
			ChatPageView()
				.tabItem {
					Text(Constants.TabBarItemText.tabBar4)
					Image(systemName: Constants.TabBarImageName.tabBar4)
						.font(.system(size: 24))
				}.tag(3)
		}
	}
}

struct TabViewComponent_Previews: PreviewProvider {
	static var previews: some View {
		TabViewComponent()
			.environment(\.colorScheme, .dark)
	}
}
