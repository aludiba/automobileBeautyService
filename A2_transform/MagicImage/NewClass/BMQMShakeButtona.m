#import "BMQMShakeButtona.h"
@implementation BMQMShakeButtona
+ (BOOL)cInitwithframe:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)erunShakeAnimation:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
