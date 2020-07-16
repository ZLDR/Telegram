//
//  ContentView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 15/07/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FirstPageView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		
        FirstPageView()
			.environment(\.colorScheme, .dark)
			.listStyle(GroupedListStyle())
		
    }
}
