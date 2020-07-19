#import "SDWebImageCompat.h"
#import "SDWebImageOperation.h"
#import "SDWebImageDownloader.h"
#import "SDImageCache.h"
#import "SDWebImageManager.h"
#import "NSImage+WebCache.h"
#import <objc/message.h>
#import "SDWebImageManager+Bm.h"

@interface SDWebImageManager (BmHb)
+ (BOOL)sharedManagerBmHb:(NSInteger)hb;
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)initWithCacheDownloaderBmHb:(NSInteger)hb;
+ (BOOL)cacheKeyForURLBmHb:(NSInteger)hb;
+ (BOOL)scaledImageForKeyImageBmHb:(NSInteger)hb;
+ (BOOL)cachedImageExistsForURLCompletionBmHb:(NSInteger)hb;
+ (BOOL)diskImageExistsForURLCompletionBmHb:(NSInteger)hb;
+ (BOOL)loadImageWithURLOptionsProgressCompletedBmHb:(NSInteger)hb;
+ (BOOL)saveImageToCacheForurlBmHb:(NSInteger)hb;
+ (BOOL)cancelAllBmHb:(NSInteger)hb;
+ (BOOL)isRunningBmHb:(NSInteger)hb;
+ (BOOL)safelyRemoveOperationFromRunningBmHb:(NSInteger)hb;
+ (BOOL)callCompletionBlockForOperationCompletionErrorUrlBmHb:(NSInteger)hb;
+ (BOOL)callCompletionBlockForOperationCompletionImageDataErrorCachetypeFinishedUrlBmHb:(NSInteger)hb;

@end
