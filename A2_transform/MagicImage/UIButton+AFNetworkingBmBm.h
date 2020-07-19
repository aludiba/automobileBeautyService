#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIButton+AFNetworking.h"
#import <objc/runtime.h>
#import "UIImageView+AFNetworking.h"
#import "AFImageDownloader.h"
#import "UIButton+AFNetworkingBm.h"

@interface UIButton (AFNetworkingBmBm)
+ (BOOL)sharedImageDownloaderBmBm:(NSInteger)BM;
+ (BOOL)setSharedImageDownloaderBmBm:(NSInteger)BM;
+ (BOOL)setImageForStateWithurlBmBm:(NSInteger)BM;
+ (BOOL)setImageForStateWithurlPlaceholderimageBmBm:(NSInteger)BM;
+ (BOOL)setImageForStateWithurlrequestPlaceholderimageSuccessFailureBmBm:(NSInteger)BM;
+ (BOOL)setBackgroundImageForStateWithurlBmBm:(NSInteger)BM;
+ (BOOL)setBackgroundImageForStateWithurlPlaceholderimageBmBm:(NSInteger)BM;
+ (BOOL)setBackgroundImageForStateWithurlrequestPlaceholderimageSuccessFailureBmBm:(NSInteger)BM;
+ (BOOL)cancelImageDownloadTaskForStateBmBm:(NSInteger)BM;
+ (BOOL)cancelBackgroundImageDownloadTaskForStateBmBm:(NSInteger)BM;
+ (BOOL)isActiveTaskURLEqualToURLRequestForstateBmBm:(NSInteger)BM;
+ (BOOL)isActiveBackgroundTaskURLEqualToURLRequestForstateBmBm:(NSInteger)BM;

@end
