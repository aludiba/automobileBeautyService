#import "SDWebImageCompat.h"
#import "SDWebImageOperation.h"
#import "SDWebImageDownloader.h"
#import "SDImageCache.h"
#import "SDWebImageManager.h"
#import "NSImage+WebCache.h"
#import <objc/message.h>
#import "SDWebImageManager+Bm.h"

@interface SDWebImageManager (Bm-Deletecomments)
+ (BOOL)sharedManagerBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithCacheDownloaderBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)cacheKeyForURLBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)scaledImageForKeyImageBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)cachedImageExistsForURLCompletionBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)diskImageExistsForURLCompletionBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)loadImageWithURLOptionsProgressCompletedBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)saveImageToCacheForurlBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)cancelAllBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isRunningBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)safelyRemoveOperationFromRunningBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)callCompletionBlockForOperationCompletionErrorUrlBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)callCompletionBlockForOperationCompletionImageDataErrorCachetypeFinishedUrlBm-Deletecomments:(NSInteger)-deleteComments;

@end
