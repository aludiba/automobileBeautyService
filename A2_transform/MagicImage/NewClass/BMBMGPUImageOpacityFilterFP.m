#import "BMBMGPUImageOpacityFilterFP.h"
@implementation BMBMGPUImageOpacityFilterFP
+ (BOOL)JSinitbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)MZsetopacitybmbm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
