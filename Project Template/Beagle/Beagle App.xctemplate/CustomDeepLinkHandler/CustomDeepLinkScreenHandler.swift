// ___FILEHEADER___

import UIKit
import Beagle

protocol DeeplinkScreen {
    init(path: String, data: [String: String]?)
    func screenController() -> UIViewController
}

final class CustomDeepLinkScreenHandler: DeepLinkScreenManaging {
    func getNativeScreen(with path: String, data: [String : String]?) throws -> UIViewController {
        
    }
    
}

struct CustomDeepLinkScreen: DeeplinkScreen {
    init(path: String, data: [String : String]?) {
        
    }
    
    func screenController() -> UIViewController {

    }
    
}
