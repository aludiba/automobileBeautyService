#import "BMBMGPUImageToonFilterLv.h"
@implementation BMBMGPUImageToonFilterLv
+ (BOOL)UXinitbmbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)jIsetthresholdbmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)hGsetquantizationlevelsbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
