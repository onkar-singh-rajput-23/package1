//
//  ContentView.swift
//  Package
//
//  Created by onkar.rajput on 20/11/25.
//

import SwiftUI

@available(iOS 13.0, macOS 12.0, tvOS 13.0, watchOS 6.0, *)
public struct ContentView: View {
    public init() {}

    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}
