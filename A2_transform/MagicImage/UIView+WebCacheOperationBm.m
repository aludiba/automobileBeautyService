#import "UIView+WebCacheOperationBm.h"
@implementation UIView (WebCacheOperationBm)
+ (BOOL)sd_operationDictionaryBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)sd_setImageLoadOperationForkeyBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sd_cancelImageLoadOperationWithKeyBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)sd_removeImageLoadOperationWithKeyBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
