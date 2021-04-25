// ___FILEHEADER___

import Foundation
import Beagle

class CustomImageDownloader: ImageDownloader {
    
    func fetchImage(url: String, additionalData: RemoteScreenAdditionalData?, completion: @escaping (Result<Data, Request.Error>) -> Void) -> RequestToken? {
        /// implement your image downloader here
        return nil
    }
    
}
