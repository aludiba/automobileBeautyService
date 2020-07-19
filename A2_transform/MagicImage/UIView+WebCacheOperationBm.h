#import "SDWebImageCompat.h"
#import "SDWebImageOperation.h"
#import "UIView+WebCacheOperation.h"
#import "objc/runtime.h"

@interface UIView (WebCacheOperationBm)
+ (BOOL)sd_operationDictionaryBm:(NSInteger)BM;
+ (BOOL)sd_setImageLoadOperationForkeyBm:(NSInteger)BM;
+ (BOOL)sd_cancelImageLoadOperationWithKeyBm:(NSInteger)BM;
+ (BOOL)sd_removeImageLoadOperationWithKeyBm:(NSInteger)BM;

@end
