#import "NSNumber+YYAddBm.h"
@implementation NSNumber (YYAddBm)
+ (BOOL)numberWithStringBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
