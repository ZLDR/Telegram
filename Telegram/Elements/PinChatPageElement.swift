//
//  PinChatPageElement.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 20/07/2020.
//

import SwiftUI

struct PinChatPageElement: View {
    var body: some View {
        VStack(spacing: 0){
            ForEach(Service2.listData){ item in
                VStack{
                    HStack{
                        Image(item.photo)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 50, height: 50, alignment: .leading)
                        VStack{
                            HStack{
                                Text(item.name)
                                    .font(.system(size: 16)).bold()
                                    .foregroundColor(.white)
                                Spacer()
                                Image(item.status).imageScale(.small)
                                Text(item.time)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            HStack{
                                Text(item.text)
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                    .frame(width: 260, height: 50, alignment: .topLeading)
                                
                                Spacer()
                                Image(systemName: item.pinned)
                                    .rotationEffect(.init(degrees: 45))
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .background(Color(UIColor.secondarySystemBackground))
                }
            }
        }
    }
}

struct PinChatPageElement_Previews: PreviewProvider {
    static var previews: some View {
        PinChatPageElement()
            .environment(\.colorScheme, .dark)
    }
}
