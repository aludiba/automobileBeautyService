#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIButton+AFNetworking.h"
#import <objc/runtime.h>
#import "UIImageView+AFNetworking.h"
#import "AFImageDownloader.h"

@interface UIButton (AFNetworkingHb)
+ (BOOL)sharedImageDownloaderHb:(NSInteger)hb;
+ (BOOL)setSharedImageDownloaderHb:(NSInteger)hb;
+ (BOOL)setImageForStateWithurlHb:(NSInteger)hb;
+ (BOOL)setImageForStateWithurlPlaceholderimageHb:(NSInteger)hb;
+ (BOOL)setImageForStateWithurlrequestPlaceholderimageSuccessFailureHb:(NSInteger)hb;
+ (BOOL)setBackgroundImageForStateWithurlHb:(NSInteger)hb;
+ (BOOL)setBackgroundImageForStateWithurlPlaceholderimageHb:(NSInteger)hb;
+ (BOOL)setBackgroundImageForStateWithurlrequestPlaceholderimageSuccessFailureHb:(NSInteger)hb;
+ (BOOL)cancelImageDownloadTaskForStateHb:(NSInteger)hb;
+ (BOOL)cancelBackgroundImageDownloadTaskForStateHb:(NSInteger)hb;
+ (BOOL)isActiveTaskURLEqualToURLRequestForstateHb:(NSInteger)hb;
+ (BOOL)isActiveBackgroundTaskURLEqualToURLRequestForstateHb:(NSInteger)hb;

@end
