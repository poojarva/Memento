//
//  Memo.swift
//  Memento
//
//  Created by Surya Chappidi on 06/09/20.
//  Copyright © 2020 Surya Chappidi. All rights reserved.
//

import SwiftUI
import AVKit

struct Memo: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var count = 1
    @State var pause = false
    let relations: [String] = ["Bob","Ryan"]
    var body: some View {
        VStack {
            HStack {
                   Button(action: {
                    if self.pause{
                        self.audioPlayer.pause()
                        self.pause = false
                    }
                    else{
                        self.audioPlayer.play()
                        self.pause = true
                    }
                   }) {
                    Image(systemName: self.pause ? "pause.circle.fill":"play.circle.fill").resizable()
                           .frame(width: 40, height: 40)
                           .aspectRatio(contentMode: .fit)
                           .foregroundColor(.blue)
                   }
                   Spacer()
                Text("Jenna").font(.system(size: 30))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                   
               }
            .padding(.horizontal,40)
            .padding(.top)
            ForEach(relations,id: \.self) { name in
                            HStack {
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Image(systemName: "play.circle.fill").resizable()
                                           .frame(width: 40, height: 40)
                                           .aspectRatio(contentMode: .fit)
                                           .foregroundColor(.blue)
                                   }
                                   Spacer()
                                Text(name).font(.system(size: 30))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                               }
                            .padding(.horizontal,40)
                            .padding(.top)
                       
            }
        }
        .onAppear {
                   let sound = Bundle.main.path(forResource: "jenna", ofType: "mp3")
                   self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}
struct Memo_Previews: PreviewProvider {
    static var previews: some View {
        Memo()
    }
}

