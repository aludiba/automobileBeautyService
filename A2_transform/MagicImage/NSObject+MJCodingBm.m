#import "NSObject+MJCodingBm.h"
@implementation NSObject (MJCodingBm)
+ (BOOL)mj_encodeBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mj_decodeBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
