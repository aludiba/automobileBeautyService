#import "BMGPUImageErosionFiltert.h"
@implementation BMGPUImageErosionFiltert
+ (BOOL)UInitwithradius:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)ainit:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
