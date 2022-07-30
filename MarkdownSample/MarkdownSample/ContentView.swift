//
//  ContentView.swift
//  MarkdownSample
//
//  Created by kotetu on 2022/06/17.
//

import SwiftUI

struct ContentView: View {
    private let codeBlock = """
```swift
let text = "Hello, world!"
```
"""

    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    // 利用可能な構文
                    // 太字 + ボールド　+ 打ち消し線
                    Text("~***Hello, world!***~")
                        .padding()
                    // Swiftロゴ + コードブロック表示
                    Label("`Hello, world!`", systemImage: "swift")
                        .padding()
                    // イタリック
                    Text("*Hello, world!*")
                        .padding()
                    // イタリック
                    Text("_Hello, world!_")
                        .padding()
                    // ボールド
                    Text("**Hello, world!**")
                        .padding()
                    // 打ち消し線
                    Text("~Hello, world!~")
                        .padding()
                    // リンク
                    Text("[Link](https://ja.wikipedia.org/wiki/Hello_world)")
                        .padding()
                    // インラインコード
                    Text("`Hello, world!`")
                        .padding()
                }
                VStack {
                    // 対応してない構文
                    // 見出し
                    Text("# Hello, world!")
                        .padding()
                    // 見出し
                    Text("## Hello, world!")
                        .padding()
                    // 箇条書き
                    Text("- Hello, world!")
                        .padding()
                    // 箇条書き
                    Text("* Hello, world!")
                        .padding()
                    // 引用
                    Text("> Hello, world!")
                        .padding()
                    // 水平線
                    Text("---")
                        .padding()
                    // コードブロック
                    Text(codeBlock)
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
