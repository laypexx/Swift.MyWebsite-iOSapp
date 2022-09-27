//
//  ContentView.swift
//  iOS MyWebsite App
//
//  Created by Dominic Sprenger on 27.09.22.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    private let urlString: String = "https://www.dominicsprenger.de/"
    
    var body: some View {
        VStack(spacing: 40) {
            WebView(url: URL(string: urlString)!).frame(height: 890.0)
          
        }
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
