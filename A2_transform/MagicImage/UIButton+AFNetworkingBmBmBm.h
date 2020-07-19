#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIButton+AFNetworking.h"
#import <objc/runtime.h>
#import "UIImageView+AFNetworking.h"
#import "AFImageDownloader.h"
#import "UIButton+AFNetworkingBm.h"
#import "UIButton+AFNetworkingBmBm.h"

@interface UIButton (AFNetworkingBmBmBm)
+ (BOOL)sharedImageDownloaderBmBmBm:(NSInteger)BM;
+ (BOOL)setSharedImageDownloaderBmBmBm:(NSInteger)BM;
+ (BOOL)setImageForStateWithurlBmBmBm:(NSInteger)BM;
+ (BOOL)setImageForStateWithurlPlaceholderimageBmBmBm:(NSInteger)BM;
+ (BOOL)setImageForStateWithurlrequestPlaceholderimageSuccessFailureBmBmBm:(NSInteger)BM;
+ (BOOL)setBackgroundImageForStateWithurlBmBmBm:(NSInteger)BM;
+ (BOOL)setBackgroundImageForStateWithurlPlaceholderimageBmBmBm:(NSInteger)BM;
+ (BOOL)setBackgroundImageForStateWithurlrequestPlaceholderimageSuccessFailureBmBmBm:(NSInteger)BM;
+ (BOOL)cancelImageDownloadTaskForStateBmBmBm:(NSInteger)BM;
+ (BOOL)cancelBackgroundImageDownloadTaskForStateBmBmBm:(NSInteger)BM;
+ (BOOL)isActiveTaskURLEqualToURLRequestForstateBmBmBm:(NSInteger)BM;
+ (BOOL)isActiveBackgroundTaskURLEqualToURLRequestForstateBmBmBm:(NSInteger)BM;

@end
