#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIProgressView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFURLSessionManager.h"
#import "UIProgressView+AFNetworkingBm.h"

@interface UIProgressView (AFNetworkingBmBm)
+ (BOOL)af_uploadProgressAnimatedBmBm:(NSInteger)BM;
+ (BOOL)af_setUploadProgressAnimatedBmBm:(NSInteger)BM;
+ (BOOL)af_downloadProgressAnimatedBmBm:(NSInteger)BM;
+ (BOOL)af_setDownloadProgressAnimatedBmBm:(NSInteger)BM;
+ (BOOL)setProgressWithUploadProgressOfTaskAnimatedBmBm:(NSInteger)BM;
+ (BOOL)setProgressWithDownloadProgressOfTaskAnimatedBmBm:(NSInteger)BM;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextBmBm:(NSInteger)BM;

@end
