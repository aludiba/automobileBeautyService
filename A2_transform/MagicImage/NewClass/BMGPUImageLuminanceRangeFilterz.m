#import "BMGPUImageLuminanceRangeFilterz.h"
@implementation BMGPUImageLuminanceRangeFilterz
+ (BOOL)yinit:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)aSetrangereductionfactor:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
