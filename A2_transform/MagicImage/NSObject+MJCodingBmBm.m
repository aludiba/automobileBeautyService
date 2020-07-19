#import "NSObject+MJCodingBmBm.h"
@implementation NSObject (MJCodingBmBm)
+ (BOOL)mj_encodeBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)mj_decodeBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
