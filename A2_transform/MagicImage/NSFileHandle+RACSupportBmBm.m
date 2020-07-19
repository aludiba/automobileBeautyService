#import "NSFileHandle+RACSupportBmBm.h"
@implementation NSFileHandle (RACSupportBmBm)
+ (BOOL)rac_readInBackgroundBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
