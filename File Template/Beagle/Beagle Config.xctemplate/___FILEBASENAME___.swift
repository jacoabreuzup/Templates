// ___FILEHEADER___

import Foundation
import Beagle

class ___FILEBASENAME___ {

    private init() {  }

    static func start() {
        
        let dependencies = BeagleDependencies()
        
        /**
         Here you can override Beagle dependencies as you want to, with your own implementations of each one.
         We strongly recommend that you register at least a network layer since Beagle needs to decode JSON coming from your BFF
         
         Check our documentation here: https://docs.usebeagle.io
        */
        
        /// Network client definition example
        // dependencies.networkClient = CustomNetworkClient()

        Beagle.dependencies = dependencies
    }

}
