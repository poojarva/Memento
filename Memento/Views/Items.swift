//
//  Items.swift
//  Memento
//
//  Created by Surya Chappidi on 06/09/20.
//  Copyright © 2020 Surya Chappidi. All rights reserved.
//

import SwiftUI

struct Items: View {
    var width: CGFloat = 150
    var height: CGFloat = 150
    var body: some View {
        VStack {
            HStack{
            VStack {
                HStack(alignment: .top) {
                    Text("Kitchen")
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: 100)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                    Spacer()
                }
                Image("kitchen1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
            }
            .padding(.horizontal, 20)
            .frame(width: width, height: height)
            .background(Color(#colorLiteral(red: 0.8499839469, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(20)
            .shadow(color: Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
            Spacer()
            VStack {
                HStack(alignment: .top) {
                    Text("Living")
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: 100)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                    Spacer()
                }
                Image("room")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
            }
            .padding(.horizontal, 20)
            .frame(width: width, height: height)
              .background(Color(#colorLiteral(red: 0.8499839469, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(20)
                        .shadow(color: Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
            }.padding(.horizontal, 20)
                HStack{
                    VStack {
                        HStack(alignment: .top) {
                            Text("Bedroom")
                                .font(.system(size: 20, weight: .bold))
                                .frame(width: 100)
                                .foregroundColor(.black)
                                .padding(.horizontal)
                            Spacer()
                        }
                        Image("bed")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                    }
                    .padding(.horizontal, 20)
                    .frame(width: width, height: height)
                    .background(Color(#colorLiteral(red: 0.8499839469, green: 1, blue: 1, alpha: 1)))
                               .cornerRadius(20)
                               .shadow(color: Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
                    Spacer()
                    VStack {
                        HStack(alignment: .top) {
                            Text("Bathroom")
                                .font(.system(size: 20, weight: .bold))
                                .frame(width: 100)
                                .foregroundColor(.black)
                                .padding(.horizontal)
                            Spacer()
                        }
                        Image("bathroom")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                    }
                    .padding(.horizontal, 20)
                    .frame(width: width, height: height)
                     .background(Color(#colorLiteral(red: 0.8499839469, green: 1, blue: 1, alpha: 1)))
                               .cornerRadius(20)
                               .shadow(color: Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
                }
            .padding(20)
            
        
        }
    }
}

struct Items_Previews: PreviewProvider {
    static var previews: some View {
        Items()
    }
}


