#import "BMGPUImageColorPackingFilterp.h"
@implementation BMGPUImageColorPackingFilterp
+ (BOOL)HInitbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)wSetupfilterforsizebm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)QSizeoffbobm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)lOutputframesizebm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
