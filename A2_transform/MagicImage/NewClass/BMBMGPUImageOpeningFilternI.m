#import "BMBMGPUImageOpeningFilternI.h"
@implementation BMBMGPUImageOpeningFilternI
+ (BOOL)hVinit:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)iCinitwithradius:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)rTsetverticaltexelspacing:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)xQsethorizontaltexelspacing:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
