#import "BMBMGPUImageClosingFilterSn.h"
@implementation BMBMGPUImageClosingFilterSn
+ (BOOL)EEinit:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)VRinitwithradius:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)KAsetverticaltexelspacing:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)ePsethorizontaltexelspacing:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
