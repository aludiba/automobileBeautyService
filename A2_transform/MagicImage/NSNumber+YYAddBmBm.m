#import "NSNumber+YYAddBmBm.h"
@implementation NSNumber (YYAddBmBm)
+ (BOOL)numberWithStringBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
