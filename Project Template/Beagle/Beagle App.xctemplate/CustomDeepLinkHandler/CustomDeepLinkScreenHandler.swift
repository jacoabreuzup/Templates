// ___FILEHEADER___

import UIKit
import Beagle

protocol DeeplinkScreen {
    init(path: String, data: [String: String]?)
    func screenController() -> UIViewController
}

final class CustomDeepLinkScreenHandler: DeepLinkScreenManaging {
    public static let shared = CustomDeepLinkScreenHandler()
    
    private var screens: [String: DeeplinkScreen.Type] = [:]
    
    public subscript(path: String) -> DeeplinkScreen.Type? {
        get {
            return screens[path]
        }
        set {
            screens[path] = newValue
        }
    }
    
    func getNativeScreen(with path: String, data: [String : String]?) throws -> UIViewController {
        return UIViewController()
    }
    
}

struct CustomDeepLinkScreen: DeeplinkScreen {
    init(path: String, data: [String : String]?) {
        
    }
    
    func screenController() -> UIViewController {
        return UIViewController()
    }
    
}
