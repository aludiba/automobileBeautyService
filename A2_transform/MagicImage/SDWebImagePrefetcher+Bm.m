#import "SDWebImagePrefetcher+Bm.h"
@implementation SDWebImagePrefetcher (Bm)
+ (BOOL)sharedImagePrefetcherBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)initWithImageManagerBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setMaxConcurrentDownloadsBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)maxConcurrentDownloadsBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)startPrefetchingAtIndexBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)reportStatusBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)prefetchURLsBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)prefetchURLsProgressCompletedBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)cancelPrefetchingBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
