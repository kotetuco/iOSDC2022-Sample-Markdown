//
//  ViewController.swift
//  MarkdownSampleUIKit
//
//  Created by kotetu on 2022/09/06.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var helloLabelItalic: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabelItalic.attributedText = NSAttributedString(helloWorldItalic)
    }

    var helloWorldItalic: AttributedString {
        do {
            var attributedString = try AttributedString(markdown: "_Hello, world!_")
            attributedString.font = .systemFont(ofSize: 20)
            return attributedString
        } catch {
            return AttributedString("Couldn’t parse: \(error)")
        }
    }
}
