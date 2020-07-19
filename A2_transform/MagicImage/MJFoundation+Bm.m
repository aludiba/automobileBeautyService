#import "MJFoundation+Bm.h"
@implementation MJFoundation (Bm)
+ (BOOL)isClassFromFoundationBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
