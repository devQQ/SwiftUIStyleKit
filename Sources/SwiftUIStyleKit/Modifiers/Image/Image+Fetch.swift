//
//  Image+Fetch.swift
//  
//
//  Created by Q Trang on 7/21/20.
//

import SwiftUI
import SwiftImageService

public struct RemoteImageModifier: ViewModifier {
    public let url: String
    @ObservedObject public var imageLoader: ImageLoader
    
    public init(url: String) {
        self.url = url
        self.imageLoader = ImageLoaderCache.shared.load(url: url, manualFetch: true)
    }
    
    public func body(content: Content) -> some View {
        if let image = imageLoader.image {
            return Image(uiImage: image)
                .resizable()
                .eraseToAnyView()
        } else {
            return content
                .onAppear(perform: {
                    self.imageLoader.fetchImage()
                })
                .eraseToAnyView()
        }
    }
}

extension Image {
    public func fetchRemoteImage(url: String) -> some View {
        ModifiedContent(content: self, modifier: RemoteImageModifier(url: url))
    }
}

