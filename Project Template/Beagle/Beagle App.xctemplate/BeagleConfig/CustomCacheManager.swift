// ___FILEHEADER___

import Foundation
import Beagle

class CustomCacheManager: CacheManagerProtocol {
    func addToCache(_ reference: CacheReference) {
        
    }
    
    func getReference(identifiedBy id: String) -> CacheReference? {
        return nil
    }
    
    func isValid(reference: CacheReference) -> Bool {
        return true
    }
    
}