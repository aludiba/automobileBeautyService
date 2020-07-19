#import <Foundation/Foundation.h>
#import "SDWebImageManager.h"
#import "SDWebImagePrefetcher.h"

@interface SDWebImagePrefetcher (Bm)
+ (BOOL)sharedImagePrefetcherBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithImageManagerBm:(NSInteger)BM;
+ (BOOL)setMaxConcurrentDownloadsBm:(NSInteger)BM;
+ (BOOL)maxConcurrentDownloadsBm:(NSInteger)BM;
+ (BOOL)startPrefetchingAtIndexBm:(NSInteger)BM;
+ (BOOL)reportStatusBm:(NSInteger)BM;
+ (BOOL)prefetchURLsBm:(NSInteger)BM;
+ (BOOL)prefetchURLsProgressCompletedBm:(NSInteger)BM;
+ (BOOL)cancelPrefetchingBm:(NSInteger)BM;

@end
