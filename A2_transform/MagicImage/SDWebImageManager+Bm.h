#import "SDWebImageCompat.h"
#import "SDWebImageOperation.h"
#import "SDWebImageDownloader.h"
#import "SDImageCache.h"
#import "SDWebImageManager.h"
#import "NSImage+WebCache.h"
#import <objc/message.h>

@interface SDWebImageManager (Bm)
+ (BOOL)sharedManagerBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithCacheDownloaderBm:(NSInteger)BM;
+ (BOOL)cacheKeyForURLBm:(NSInteger)BM;
+ (BOOL)scaledImageForKeyImageBm:(NSInteger)BM;
+ (BOOL)cachedImageExistsForURLCompletionBm:(NSInteger)BM;
+ (BOOL)diskImageExistsForURLCompletionBm:(NSInteger)BM;
+ (BOOL)loadImageWithURLOptionsProgressCompletedBm:(NSInteger)BM;
+ (BOOL)saveImageToCacheForurlBm:(NSInteger)BM;
+ (BOOL)cancelAllBm:(NSInteger)BM;
+ (BOOL)isRunningBm:(NSInteger)BM;
+ (BOOL)safelyRemoveOperationFromRunningBm:(NSInteger)BM;
+ (BOOL)callCompletionBlockForOperationCompletionErrorUrlBm:(NSInteger)BM;
+ (BOOL)callCompletionBlockForOperationCompletionImageDataErrorCachetypeFinishedUrlBm:(NSInteger)BM;

@end
