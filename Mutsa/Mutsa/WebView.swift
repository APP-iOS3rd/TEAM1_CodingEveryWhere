//
//  WebView.swift
//  Mutsa
//
//  Created by 백대홍 on 11/2/23.
//

import WebKit
import UIKit
import SwiftUI

struct MyWebview: UIViewRepresentable {
    var urlToLoad: String
    
    func makeUIView(context: Context) -> WKWebView { //웹뷰 반환
        guard let url = URL(string: self.urlToLoad) else{
            return WKWebView()
        }

        let webview = WKWebView()
        webview.load(URLRequest(url: url))
        return webview
    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
    
}
