//
//  ContentView.swift
//  Shared
//
//  Created by Ramill Ibragimov on 11.05.2021.
//

import SwiftUI

struct ContentView: View {
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    #endif
    
    @ViewBuilder
    var body: some View {
        NavigationView {
            #if os(iOS)
            if horizontalSizeClass == .compact {
                TabBarView()
            } else {
                SideBarView()
            }
            #endif
            
            #if os(macOS)
            SideBarView()
            #endif
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
