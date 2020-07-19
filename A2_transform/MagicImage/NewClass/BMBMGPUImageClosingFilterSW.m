#import "BMBMGPUImageClosingFilterSW.h"
@implementation BMBMGPUImageClosingFilterSW
+ (BOOL)aEinit:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)PRinitwithradius:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)EAsetverticaltexelspacing:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)fPsethorizontaltexelspacing:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
