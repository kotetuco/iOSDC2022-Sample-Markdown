//
//  ContentView.swift
//  MarkdownSampleiOS13
//
//  Created by kotetu on 2022/06/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    // 対応してるフォーマット
                    Text("Hello, world!")
                        .padding()
                    Text("*Hello, world!*")
                        .padding()
                    Text("**Hello, world!**")
                        .padding()
                    Text("***Hello, world!***")
                        .padding()
                    Text("~Hello, world!~")
                        .padding()
                    Text("[Hello, world!](https://ja.wikipedia.org/wiki/Hello_world)")
                        .padding()
                    Text("`Hello, world!`")
                        .padding()
                }
                VStack {
                    // 対応してないフォーマット
                    Text("# Hello, world!")
                        .padding()
                    Text("## Hello, world!")
                        .padding()
                    Text("- Hello, world!")
                        .padding()
                    Text("* Hello, world!")
                        .padding()
                    Text("> Hello, world!")
                        .padding()
                    Text("- [x] Hello, world!")
                        .padding()
                    Text("---")
                        .padding()
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
