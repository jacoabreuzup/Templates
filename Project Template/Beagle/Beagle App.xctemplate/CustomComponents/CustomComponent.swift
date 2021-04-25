// ___FILEHEADER___

import UIKit
import Beagle

struct CustomComponent: Widget {
    var widgetProperties: WidgetProperties

    func toView(renderer: BeagleRenderer) -> UIView {
        /// render your custom component here
        return UIView()
    }

}
