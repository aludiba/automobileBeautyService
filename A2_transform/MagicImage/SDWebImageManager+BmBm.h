#import "SDWebImageCompat.h"
#import "SDWebImageOperation.h"
#import "SDWebImageDownloader.h"
#import "SDImageCache.h"
#import "SDWebImageManager.h"
#import "NSImage+WebCache.h"
#import <objc/message.h>
#import "SDWebImageManager+Bm.h"

@interface SDWebImageManager (BmBm)
+ (BOOL)sharedManagerBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithCacheDownloaderBmBm:(NSInteger)BM;
+ (BOOL)cacheKeyForURLBmBm:(NSInteger)BM;
+ (BOOL)scaledImageForKeyImageBmBm:(NSInteger)BM;
+ (BOOL)cachedImageExistsForURLCompletionBmBm:(NSInteger)BM;
+ (BOOL)diskImageExistsForURLCompletionBmBm:(NSInteger)BM;
+ (BOOL)loadImageWithURLOptionsProgressCompletedBmBm:(NSInteger)BM;
+ (BOOL)saveImageToCacheForurlBmBm:(NSInteger)BM;
+ (BOOL)cancelAllBmBm:(NSInteger)BM;
+ (BOOL)isRunningBmBm:(NSInteger)BM;
+ (BOOL)safelyRemoveOperationFromRunningBmBm:(NSInteger)BM;
+ (BOOL)callCompletionBlockForOperationCompletionErrorUrlBmBm:(NSInteger)BM;
+ (BOOL)callCompletionBlockForOperationCompletionImageDataErrorCachetypeFinishedUrlBmBm:(NSInteger)BM;

@end
