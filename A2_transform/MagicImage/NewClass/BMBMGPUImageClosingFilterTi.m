#import "BMBMGPUImageClosingFilterTi.h"
@implementation BMBMGPUImageClosingFilterTi
+ (BOOL)hBinit:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)xHinitwithradius:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)zRsetverticaltexelspacing:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)gVsethorizontaltexelspacing:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
