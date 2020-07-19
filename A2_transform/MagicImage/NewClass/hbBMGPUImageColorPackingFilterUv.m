#import "hbBMGPUImageColorPackingFilterUv.h"
@implementation hbBMGPUImageColorPackingFilterUv
+ (BOOL)HYinitbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)tXsetupfilterforsizebm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)EPsizeoffbobm:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)qKoutputframesizebm:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
