#import "BMNSSetd.h"
@implementation BMNSSetd
+ (BOOL)trac_sequence:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
