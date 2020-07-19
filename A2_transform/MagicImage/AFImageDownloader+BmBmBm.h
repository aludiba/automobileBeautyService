#import <TargetConditionals.h>
#import <Foundation/Foundation.h>
#import "AFAutoPurgingImageCache.h"
#import "AFHTTPSessionManager.h"
#import <TargetConditionals.h>
#import "AFImageDownloader.h"
#import "AFHTTPSessionManager.h"
#import "AFImageDownloader+Bm.h"
#import "AFImageDownloader+BmBm.h"

@interface AFImageDownloader (BmBmBm)
+ (BOOL)defaultURLCacheBmBmBm:(NSInteger)BM;
+ (BOOL)defaultURLSessionConfigurationBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithSessionConfigurationBmBmBm:(NSInteger)BM;
+ (BOOL)initWithSessionManagerDownloadprioritizationMaximumactivedownloadsImagecacheBmBmBm:(NSInteger)BM;
+ (BOOL)defaultInstanceBmBmBm:(NSInteger)BM;
+ (BOOL)downloadImageForURLRequestSuccessFailureBmBmBm:(NSInteger)BM;
+ (BOOL)downloadImageForURLRequestWithreceiptidSuccessFailureBmBmBm:(NSInteger)BM;
+ (BOOL)cancelTaskForImageDownloadReceiptBmBmBm:(NSInteger)BM;
+ (BOOL)safelyRemoveMergedTaskWithURLIdentifierBmBmBm:(NSInteger)BM;
+ (BOOL)removeMergedTaskWithURLIdentifierBmBmBm:(NSInteger)BM;
+ (BOOL)safelyDecrementActiveTaskCountBmBmBm:(NSInteger)BM;
+ (BOOL)safelyStartNextTaskIfNecessaryBmBmBm:(NSInteger)BM;
+ (BOOL)startMergedTaskBmBmBm:(NSInteger)BM;
+ (BOOL)enqueueMergedTaskBmBmBm:(NSInteger)BM;
+ (BOOL)dequeueMergedTaskBmBmBm:(NSInteger)BM;
+ (BOOL)isActiveRequestCountBelowMaximumLimitBmBmBm:(NSInteger)BM;
+ (BOOL)safelyGetMergedTaskBmBmBm:(NSInteger)BM;

@end
