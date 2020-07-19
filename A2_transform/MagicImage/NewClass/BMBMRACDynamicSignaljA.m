#import "BMBMRACDynamicSignaljA.h"
@implementation BMBMRACDynamicSignaljA
+ (BOOL)fLcreatesignalbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)LSsubscribebmbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
