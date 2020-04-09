#import "FBAppLink.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@implementation FBAppLink {
	NSURL *appLinkUrl;
}

RCT_EXPORT_MODULE();
RCT_REMAP_METHOD(
	fetch,
	resolver:(RCTPromiseResolveBlock)resolve
	rejecter:(RCTPromiseRejectBlock)reject
) {
	dispatch_async(dispatch_get_main_queue(), ^{
		[FBSDKAppLinkUtility fetchDeferredAppLink:^(NSURL *url, NSError *error) {
			if (error) {
				reject(@"error", @"FBAppLink Received error while fetching deferred app link %@", error);
			}
			if (url) {
				self->appLinkUrl = url;
				[[UIApplication sharedApplication] openURL:url];
				NSString* volumeString = [NSString stringWithFormat:@"%@", self->appLinkUrl];

				resolve(volumeString);
			} else {
				resolve([NSNull null]);
			}
		}];
	});
}

@end