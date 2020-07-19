#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIProgressView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFURLSessionManager.h"
#import "UIProgressView+AFNetworkingHb.h"

@interface UIProgressView (AFNetworkingHbHb)
+ (BOOL)af_uploadProgressAnimatedHbHb:(NSInteger)hb;
+ (BOOL)af_setUploadProgressAnimatedHbHb:(NSInteger)hb;
+ (BOOL)af_downloadProgressAnimatedHbHb:(NSInteger)hb;
+ (BOOL)af_setDownloadProgressAnimatedHbHb:(NSInteger)hb;
+ (BOOL)setProgressWithUploadProgressOfTaskAnimatedHbHb:(NSInteger)hb;
+ (BOOL)setProgressWithDownloadProgressOfTaskAnimatedHbHb:(NSInteger)hb;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextHbHb:(NSInteger)hb;

@end
