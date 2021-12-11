//
//  ChatPageElement.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 19/07/2020.
//

import SwiftUI

struct ChatPageElement: View {
    var body: some View {
        VStack(alignment: .trailing ,spacing: 0){
            List{
                ForEach(Service.listData){ item in
                    HStack(alignment: .center){
                        Image(item.photo)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                            .clipped()
                        VStack(spacing: 8){
                            HStack{
                                Text(item.name)
                                    .font(.system(size: 18)).bold()
                                    .foregroundColor(.white)
                                Spacer()
                                Image(item.status).imageScale(.small)
                                Text(item.time)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            HStack{
                                HStack{
                                    Text(item.text)
                                        .font(.system(size: 16))
                                        .foregroundColor(.gray)
                                        .lineLimit(2)
                                    Spacer()
                                    Image(systemName: item.pinned)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24)
                                        .clipped()
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(InsetListStyle())
            .listRowSeparator(.hidden)
        }
    }
    //    func delete(at offsets: IndexSet) {
    //        Service.listData.remove(atOffsets: offsets)
    //    }
}


struct ChatPageElement_Previews: PreviewProvider {
    static var previews: some View {
        ChatPageElement()
            .environment(\.colorScheme, .dark)
    }
}
