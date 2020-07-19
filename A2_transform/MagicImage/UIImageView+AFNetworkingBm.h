#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFImageDownloader.h"

@interface UIImageView (AFNetworkingBm)
+ (BOOL)sharedImageDownloaderBm:(NSInteger)BM;
+ (BOOL)setSharedImageDownloaderBm:(NSInteger)BM;
+ (BOOL)setImageWithURLBm:(NSInteger)BM;
+ (BOOL)setImageWithURLPlaceholderimageBm:(NSInteger)BM;
+ (BOOL)setImageWithURLRequestPlaceholderimageSuccessFailureBm:(NSInteger)BM;
+ (BOOL)cancelImageDownloadTaskBm:(NSInteger)BM;
+ (BOOL)clearActiveDownloadInformationBm:(NSInteger)BM;
+ (BOOL)isActiveTaskURLEqualToURLRequestBm:(NSInteger)BM;

@end
