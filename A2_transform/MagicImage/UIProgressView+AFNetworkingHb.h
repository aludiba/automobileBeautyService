#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIProgressView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFURLSessionManager.h"

@interface UIProgressView (AFNetworkingHb)
+ (BOOL)af_uploadProgressAnimatedHb:(NSInteger)hb;
+ (BOOL)af_setUploadProgressAnimatedHb:(NSInteger)hb;
+ (BOOL)af_downloadProgressAnimatedHb:(NSInteger)hb;
+ (BOOL)af_setDownloadProgressAnimatedHb:(NSInteger)hb;
+ (BOOL)setProgressWithUploadProgressOfTaskAnimatedHb:(NSInteger)hb;
+ (BOOL)setProgressWithDownloadProgressOfTaskAnimatedHb:(NSInteger)hb;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextHb:(NSInteger)hb;

@end
