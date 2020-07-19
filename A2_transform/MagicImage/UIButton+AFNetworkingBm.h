#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIButton+AFNetworking.h"
#import <objc/runtime.h>
#import "UIImageView+AFNetworking.h"
#import "AFImageDownloader.h"

@interface UIButton (AFNetworkingBm)
+ (BOOL)sharedImageDownloaderBm:(NSInteger)BM;
+ (BOOL)setSharedImageDownloaderBm:(NSInteger)BM;
+ (BOOL)setImageForStateWithurlBm:(NSInteger)BM;
+ (BOOL)setImageForStateWithurlPlaceholderimageBm:(NSInteger)BM;
+ (BOOL)setImageForStateWithurlrequestPlaceholderimageSuccessFailureBm:(NSInteger)BM;
+ (BOOL)setBackgroundImageForStateWithurlBm:(NSInteger)BM;
+ (BOOL)setBackgroundImageForStateWithurlPlaceholderimageBm:(NSInteger)BM;
+ (BOOL)setBackgroundImageForStateWithurlrequestPlaceholderimageSuccessFailureBm:(NSInteger)BM;
+ (BOOL)cancelImageDownloadTaskForStateBm:(NSInteger)BM;
+ (BOOL)cancelBackgroundImageDownloadTaskForStateBm:(NSInteger)BM;
+ (BOOL)isActiveTaskURLEqualToURLRequestForstateBm:(NSInteger)BM;
+ (BOOL)isActiveBackgroundTaskURLEqualToURLRequestForstateBm:(NSInteger)BM;

@end
