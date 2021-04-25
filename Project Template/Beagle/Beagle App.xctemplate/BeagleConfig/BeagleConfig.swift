// ___FILEHEADER___

import Foundation
import Beagle

class BeagleConfig {

    private init() {  }

    static func start() {
        let deepLinkHandler = registerDeepLink()

        let dependencies = BeagleDependencies()
        dependencies.theme = CustomTheme.theme
        dependencies.urlBuilder = UrlBuilder(baseUrl: URL(string: "baseURLendpoint"))
        dependencies.deepLinkHandler = deepLinkHandler
        dependencies.analytics = CustomAnalytics()
        dependencies.isLoggingEnabled = true

        let innerDependencies = InnerDependencies()
        dependencies.networkClient = CustomNetworkClient()
        dependencies.cacheManager = CustomCacheManager()
        dependencies.logger = innerDependencies.logger
        dependencies.analyticsProvider = CustomAnalyticsProvider()
        dependencies.imageDownloader = CustomImageDownloader()

        registerCustomOperations(in: dependencies)
        registerCustomComponents(in: dependencies)
        registerCustomActions(in: dependencies)

        Beagle.dependencies = dependencies
    }

    private static func registerDeepLink() -> CustomDeepLinkScreenHandler {
        let deepLink = CustomDeepLinkScreenHandler.shared
        deepLink["customDeepLinkScreenEndPoint"] = CustomDeepLinkScreen.self
        /// you can register more deep links here
        return deepLink
    }

    private static func registerCustomComponents(in dependencies: BeagleDependencies) {
        dependencies.decoder.register(component: CustomComponent.self)
        /// you can register more custom components here
    }

    private static func registerCustomActions(in dependencies: BeagleDependencies) {
        dependencies.decoder.register(action: CustomAction.self)
        dependencies.decoder.register(action: CustomAnalyticsAction.self)
        /// you can register more custom actions here
    }
    
    private static func registerCustomOperations(in dependencies: BeagleDependencies) {
        dependencies.operationsProvider.register(operationId: "customOperationId") { parameters in
            /// implement your custom operation here
            return nil
        }
    }

}

class InnerDependencies: DependencyLogger {
    var logger: BeagleLoggerType = CustomBeagleLogger()
}
