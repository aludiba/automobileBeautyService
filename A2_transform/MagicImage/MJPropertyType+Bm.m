#import "MJPropertyType+Bm.h"
@implementation MJPropertyType (Bm)
+ (BOOL)cachedTypeWithCodeBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setCodeBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
