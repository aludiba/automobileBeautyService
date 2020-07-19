#import "NSFileHandle+RACSupportBm.h"
@implementation NSFileHandle (RACSupportBm)
+ (BOOL)rac_readInBackgroundBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
