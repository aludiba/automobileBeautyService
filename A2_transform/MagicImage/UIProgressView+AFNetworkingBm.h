#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIProgressView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFURLSessionManager.h"

@interface UIProgressView (AFNetworkingBm)
+ (BOOL)af_uploadProgressAnimatedBm:(NSInteger)BM;
+ (BOOL)af_setUploadProgressAnimatedBm:(NSInteger)BM;
+ (BOOL)af_downloadProgressAnimatedBm:(NSInteger)BM;
+ (BOOL)af_setDownloadProgressAnimatedBm:(NSInteger)BM;
+ (BOOL)setProgressWithUploadProgressOfTaskAnimatedBm:(NSInteger)BM;
+ (BOOL)setProgressWithDownloadProgressOfTaskAnimatedBm:(NSInteger)BM;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextBm:(NSInteger)BM;

@end
