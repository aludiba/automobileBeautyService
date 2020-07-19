#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFImageDownloader.h"

@interface UIImageView (AFNetworkingHb)
+ (BOOL)sharedImageDownloaderHb:(NSInteger)hb;
+ (BOOL)setSharedImageDownloaderHb:(NSInteger)hb;
+ (BOOL)setImageWithURLHb:(NSInteger)hb;
+ (BOOL)setImageWithURLPlaceholderimageHb:(NSInteger)hb;
+ (BOOL)setImageWithURLRequestPlaceholderimageSuccessFailureHb:(NSInteger)hb;
+ (BOOL)cancelImageDownloadTaskHb:(NSInteger)hb;
+ (BOOL)clearActiveDownloadInformationHb:(NSInteger)hb;
+ (BOOL)isActiveTaskURLEqualToURLRequestHb:(NSInteger)hb;

@end
