#import "BMQMShakeButtonY.h"
@implementation BMQMShakeButtonY
+ (BOOL)vInitwithframe:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)urunShakeAnimation:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
