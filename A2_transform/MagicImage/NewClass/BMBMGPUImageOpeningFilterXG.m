#import "BMBMGPUImageOpeningFilterXG.h"
@implementation BMBMGPUImageOpeningFilterXG
+ (BOOL)yFinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)xTinitwithradius:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)nQsetverticaltexelspacing:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)vPsethorizontaltexelspacing:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
