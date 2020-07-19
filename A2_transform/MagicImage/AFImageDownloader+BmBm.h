#import <TargetConditionals.h>
#import <Foundation/Foundation.h>
#import "AFAutoPurgingImageCache.h"
#import "AFHTTPSessionManager.h"
#import <TargetConditionals.h>
#import "AFImageDownloader.h"
#import "AFHTTPSessionManager.h"
#import "AFImageDownloader+Bm.h"

@interface AFImageDownloader (BmBm)
+ (BOOL)defaultURLCacheBmBm:(NSInteger)BM;
+ (BOOL)defaultURLSessionConfigurationBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithSessionConfigurationBmBm:(NSInteger)BM;
+ (BOOL)initWithSessionManagerDownloadprioritizationMaximumactivedownloadsImagecacheBmBm:(NSInteger)BM;
+ (BOOL)defaultInstanceBmBm:(NSInteger)BM;
+ (BOOL)downloadImageForURLRequestSuccessFailureBmBm:(NSInteger)BM;
+ (BOOL)downloadImageForURLRequestWithreceiptidSuccessFailureBmBm:(NSInteger)BM;
+ (BOOL)cancelTaskForImageDownloadReceiptBmBm:(NSInteger)BM;
+ (BOOL)safelyRemoveMergedTaskWithURLIdentifierBmBm:(NSInteger)BM;
+ (BOOL)removeMergedTaskWithURLIdentifierBmBm:(NSInteger)BM;
+ (BOOL)safelyDecrementActiveTaskCountBmBm:(NSInteger)BM;
+ (BOOL)safelyStartNextTaskIfNecessaryBmBm:(NSInteger)BM;
+ (BOOL)startMergedTaskBmBm:(NSInteger)BM;
+ (BOOL)enqueueMergedTaskBmBm:(NSInteger)BM;
+ (BOOL)dequeueMergedTaskBmBm:(NSInteger)BM;
+ (BOOL)isActiveRequestCountBelowMaximumLimitBmBm:(NSInteger)BM;
+ (BOOL)safelyGetMergedTaskBmBm:(NSInteger)BM;

@end
