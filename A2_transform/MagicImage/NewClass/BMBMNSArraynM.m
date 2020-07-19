#import "BMBMNSArraynM.h"
@implementation BMBMNSArraynM
+ (BOOL)WFsortedarraybytagbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)tYsortedarraybypositionbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
