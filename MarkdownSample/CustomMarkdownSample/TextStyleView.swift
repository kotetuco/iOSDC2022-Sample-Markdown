//
//  TextStyleView.swift
//  CustomMarkdownSample
//
//  Created by kotetu on 2022/06/28.
//

import SwiftUI

enum TextStyleAttribute: CodableAttributedStringKey, MarkdownDecodableAttributedStringKey {
    enum Value: String, Codable, Hashable { case body, title }
    static var name = "textStyle"
}

extension AttributeScopes {
    struct MarkdownAppAttributes: AttributeScope {
        let textStyle: TextStyleAttribute
        let swiftUI: SwiftUIAttributes
    }

    var markdownApp: MarkdownAppAttributes.Type {
        MarkdownAppAttributes.self
    }
}

extension AttributeDynamicLookup {
    subscript<T: AttributedStringKey>(dynamicMember keyPath: KeyPath<AttributeScopes.MarkdownAppAttributes, T>) -> T {
        self[T.self]
    }
}

struct TextStyleView: View {
    private let attributedString: AttributedString

    init(_ attributedString: AttributedString) {
        self.attributedString = attributedString
    }

    init(localized key: String.LocalizationValue) {
        self.attributedString = AttributedString(localized: key, including: \.markdownApp)
    }

    var body: some View {
        Text(annotateTextStyle())
    }

    private func annotateTextStyle() -> AttributedString {
        var annotatedString = attributedString
        let textStyles = attributedString.runs[\.textStyle]
            .filter { $0.0 != nil }
            .map { ($0.0!, $0.1) }

        for (value, range) in textStyles {
            switch value {
            case .body:
                annotatedString[range].font = .body
            case .title:
                annotatedString[range].font = .largeTitle
            }
        }

        return annotatedString
    }
}

struct TextStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TextStyleView(AttributedString(
            localized: "^[Title](textStyle: 'title')  ^[Body](textStyle: 'body')",
            including: \.markdownApp))
    }
}
