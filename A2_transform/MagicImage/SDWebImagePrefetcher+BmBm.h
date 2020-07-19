#import <Foundation/Foundation.h>
#import "SDWebImageManager.h"
#import "SDWebImagePrefetcher.h"
#import "SDWebImagePrefetcher+Bm.h"

@interface SDWebImagePrefetcher (BmBm)
+ (BOOL)sharedImagePrefetcherBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithImageManagerBmBm:(NSInteger)BM;
+ (BOOL)setMaxConcurrentDownloadsBmBm:(NSInteger)BM;
+ (BOOL)maxConcurrentDownloadsBmBm:(NSInteger)BM;
+ (BOOL)startPrefetchingAtIndexBmBm:(NSInteger)BM;
+ (BOOL)reportStatusBmBm:(NSInteger)BM;
+ (BOOL)prefetchURLsBmBm:(NSInteger)BM;
+ (BOOL)prefetchURLsProgressCompletedBmBm:(NSInteger)BM;
+ (BOOL)cancelPrefetchingBmBm:(NSInteger)BM;

@end
