#import <TargetConditionals.h>
#import <Foundation/Foundation.h>
#import "AFAutoPurgingImageCache.h"
#import "AFHTTPSessionManager.h"
#import <TargetConditionals.h>
#import "AFImageDownloader.h"
#import "AFHTTPSessionManager.h"

@interface AFImageDownloader (Hb)
+ (BOOL)defaultURLCacheHb:(NSInteger)hb;
+ (BOOL)defaultURLSessionConfigurationHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithSessionConfigurationHb:(NSInteger)hb;
+ (BOOL)initWithSessionManagerDownloadprioritizationMaximumactivedownloadsImagecacheHb:(NSInteger)hb;
+ (BOOL)defaultInstanceHb:(NSInteger)hb;
+ (BOOL)downloadImageForURLRequestSuccessFailureHb:(NSInteger)hb;
+ (BOOL)downloadImageForURLRequestWithreceiptidSuccessFailureHb:(NSInteger)hb;
+ (BOOL)cancelTaskForImageDownloadReceiptHb:(NSInteger)hb;
+ (BOOL)safelyRemoveMergedTaskWithURLIdentifierHb:(NSInteger)hb;
+ (BOOL)removeMergedTaskWithURLIdentifierHb:(NSInteger)hb;
+ (BOOL)safelyDecrementActiveTaskCountHb:(NSInteger)hb;
+ (BOOL)safelyStartNextTaskIfNecessaryHb:(NSInteger)hb;
+ (BOOL)startMergedTaskHb:(NSInteger)hb;
+ (BOOL)enqueueMergedTaskHb:(NSInteger)hb;
+ (BOOL)dequeueMergedTaskHb:(NSInteger)hb;
+ (BOOL)isActiveRequestCountBelowMaximumLimitHb:(NSInteger)hb;
+ (BOOL)safelyGetMergedTaskHb:(NSInteger)hb;

@end
