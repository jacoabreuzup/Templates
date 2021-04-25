// ___FILEHEADER___

import Foundation
import Beagle

class CustomAnalyticsProvider: AnalyticsProvider {
    func getConfig() -> AnalyticsConfig {
        return AnalyticsConfig()
    }
    
    func createRecord(_ record: AnalyticsRecord) {
    
    }
    
}
