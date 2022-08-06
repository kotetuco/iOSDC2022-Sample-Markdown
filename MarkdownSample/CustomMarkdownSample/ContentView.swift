//
//  ContentView.swift
//  CustomMarkdownSample
//
//  Created by kotetu on 2022/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TextStyleView(localized: "^[Title](textStyle: 'title')  ^[Body](textStyle: 'body')")
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
