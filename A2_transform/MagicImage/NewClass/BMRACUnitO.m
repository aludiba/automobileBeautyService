#import "BMRACUnitO.h"
@implementation BMRACUnitO
+ (BOOL)cdefaultUnit:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
