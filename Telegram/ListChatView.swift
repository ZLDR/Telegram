//
//  PinChatView.swift
//  Telegram
//
//  Created by Dorian ZLATAN on 15/07/2020.
//
//
//import SwiftUI
//
//struct ListChatView: View {
//	
//	var body: some View {
//		NavigationView{
//			List(Service.listData){ item in
//				Image(message.photo)
//					.resizable()
//					.aspectRatio(contentMode: .fill)
//					.clipShape(Circle())
//					.frame(width: 50, height: 50, alignment: .leading)
//				VStack{
//					HStack {
//						Text(message.name)
//							.font(.system(size: 16)).bold()
//						Spacer()
//						Image(message.status).imageScale(.small)
//						Text(message.time)
//							.font(.subheadline)
//							.foregroundColor(.gray)
//					}
//					.padding(.bottom, -10)
//					HStack {
//						VStack(alignment: .leading) {
//							Text(message.text)
//								.font(.system(size: 14))
//								.foregroundColor(.gray)
//								.frame(width: 265, height: 40,alignment: .leading)
//						}
//						.multilineTextAlignment(.leading)
//						Spacer()
//						Image(systemName: "pin.fill")
//							.imageScale(.small)
//							.rotationEffect(.init(degrees: 40), anchor: .center)
//							.foregroundColor(.gray)
//					}
//				}
//			}
//			.navigationBarItems(leading:
//									Button("Edit"){}
//								,
//								trailing:
//									Button(action: {
//										print("User icon pressed...")
//									}) {
//										Image(systemName: "square.and.pencil").imageScale(.large)
//									}
//			)
//			.navigationBarTitle("Chats", displayMode: .inline)
//			.listStyle(PlainListStyle())
//			.environment(\.defaultMinListRowHeight, 80)
//			}
//		}
//	}
//
//struct ListChatView_Previews: PreviewProvider {
//	static var previews: some View {
//		List(Service.listData) { item in
//			ListChatView(message: item)
//		}
//	}
//}
