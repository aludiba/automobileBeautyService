#import "BMBMNSArrayGS.h"
@implementation BMBMNSArrayGS
+ (BOOL)kYsortedarraybytagbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)nGsortedarraybypositionbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
