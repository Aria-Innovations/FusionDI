//
//  PhotosServiceProtocols.swift
//  PhotosService
//
//  Created by Yurii Boiko on 10/10/24.
//

import Foundation
import FusionDI

public final class PhotosServiceDependency: ValueDependencyWrapper<PhotosService> { }

public struct PhotosService {
    public typealias FetchPhotos = () async throws -> [Photo]
    
    public init(fetchAllPhotos: @escaping FetchPhotos) {
        self.fetchAllPhotos = fetchAllPhotos
    }
    
    public var fetchAllPhotos: FetchPhotos
}
