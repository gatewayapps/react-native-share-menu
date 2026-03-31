//
//  ShareMenuManager.m
//  react-native-share-menu
//
//  Created by Gustavo Parreira on 26/07/2020.
//

#import "ShareMenuManager.h"
#if __has_include(<RNShareMenu/RNShareMenu-Swift.h>)
#import <RNShareMenu/RNShareMenu-Swift.h>
#elif __has_include("RNShareMenu-Swift.h")
#import "RNShareMenu-Swift.h"
#else
#import <RNShareMenu-Swift.h>
#endif

#import <React/RCTLinkingManager.h>

@implementation ShareMenuManager

+ (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{
    [ShareMenuMessenger shareWithApplication:app openUrl:url options:options];
    return [RCTLinkingManager application:app openURL:url options:options];
}

@end
