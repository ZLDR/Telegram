//
//  ContentView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 15/07/2020.
//

import SwiftUI

struct SettingsPageView: View {
    var body: some View {
        Text("Hi")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		
        SettingsPageView()
			.environment(\.colorScheme, .dark)
			.listStyle(GroupedListStyle())
		
    }
}
