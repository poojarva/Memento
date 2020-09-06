//
//  TabBar.swift
//  Memento
//
//  Created by Surya Chappidi on 05/09/20.
//  Copyright © 2020 Surya Chappidi. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
       TabView {
            Home().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            ContentView().tabItem {
                Image(systemName: "viewfinder")
                Text("Scan")
            }
       }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
