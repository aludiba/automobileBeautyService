#import <Foundation/Foundation.h>
#import <TargetConditionals.h>
#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"
#import <objc/runtime.h>
#import "AFImageDownloader.h"
#import "UIImageView+AFNetworkingBm.h"

@interface UIImageView (AFNetworkingBmBm)
+ (BOOL)sharedImageDownloaderBmBm:(NSInteger)BM;
+ (BOOL)setSharedImageDownloaderBmBm:(NSInteger)BM;
+ (BOOL)setImageWithURLBmBm:(NSInteger)BM;
+ (BOOL)setImageWithURLPlaceholderimageBmBm:(NSInteger)BM;
+ (BOOL)setImageWithURLRequestPlaceholderimageSuccessFailureBmBm:(NSInteger)BM;
+ (BOOL)cancelImageDownloadTaskBmBm:(NSInteger)BM;
+ (BOOL)clearActiveDownloadInformationBmBm:(NSInteger)BM;
+ (BOOL)isActiveTaskURLEqualToURLRequestBmBm:(NSInteger)BM;

@end
