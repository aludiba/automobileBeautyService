#import "BMGPUImageClosingFilterT.h"
@implementation BMGPUImageClosingFilterT
+ (BOOL)binit:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)HInitwithradius:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)RSetverticaltexelspacing:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)vSethorizontaltexelspacing:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
