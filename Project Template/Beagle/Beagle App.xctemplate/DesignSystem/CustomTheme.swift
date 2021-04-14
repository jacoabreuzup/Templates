// ___FILEHEADER___

import UIKit
import Beagle

struct CustomTheme {
    
    static let theme = Beagle.AppTheme(styles: [
        "CustomStyleKey": Self.customStyle
        /// you can register more styles here
    ])
    
    static func customStyle() -> (UITextView) -> Void {
        return BeagleStyle.text(font: .systemFont(ofSize: 10), color: .black)
    }

}
