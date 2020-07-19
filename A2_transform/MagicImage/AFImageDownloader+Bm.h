#import <TargetConditionals.h>
#import <Foundation/Foundation.h>
#import "AFAutoPurgingImageCache.h"
#import "AFHTTPSessionManager.h"
#import <TargetConditionals.h>
#import "AFImageDownloader.h"
#import "AFHTTPSessionManager.h"

@interface AFImageDownloader (Bm)
+ (BOOL)defaultURLCacheBm:(NSInteger)BM;
+ (BOOL)defaultURLSessionConfigurationBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithSessionConfigurationBm:(NSInteger)BM;
+ (BOOL)initWithSessionManagerDownloadprioritizationMaximumactivedownloadsImagecacheBm:(NSInteger)BM;
+ (BOOL)defaultInstanceBm:(NSInteger)BM;
+ (BOOL)downloadImageForURLRequestSuccessFailureBm:(NSInteger)BM;
+ (BOOL)downloadImageForURLRequestWithreceiptidSuccessFailureBm:(NSInteger)BM;
+ (BOOL)cancelTaskForImageDownloadReceiptBm:(NSInteger)BM;
+ (BOOL)safelyRemoveMergedTaskWithURLIdentifierBm:(NSInteger)BM;
+ (BOOL)removeMergedTaskWithURLIdentifierBm:(NSInteger)BM;
+ (BOOL)safelyDecrementActiveTaskCountBm:(NSInteger)BM;
+ (BOOL)safelyStartNextTaskIfNecessaryBm:(NSInteger)BM;
+ (BOOL)startMergedTaskBm:(NSInteger)BM;
+ (BOOL)enqueueMergedTaskBm:(NSInteger)BM;
+ (BOOL)dequeueMergedTaskBm:(NSInteger)BM;
+ (BOOL)isActiveRequestCountBelowMaximumLimitBm:(NSInteger)BM;
+ (BOOL)safelyGetMergedTaskBm:(NSInteger)BM;

@end
