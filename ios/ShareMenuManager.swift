import Foundation
import React

@objc(ShareMenuManager)
open class ShareMenuManager: NSObject {
    @objc public static func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        ShareMenuMessenger.share(application: app, openUrl: url, options: options)
        return RCTLinkingManager.application(app, open: url, options: options)
    }
}
