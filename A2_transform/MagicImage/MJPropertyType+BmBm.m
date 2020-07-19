#import "MJPropertyType+BmBm.h"
@implementation MJPropertyType (BmBm)
+ (BOOL)cachedTypeWithCodeBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setCodeBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
