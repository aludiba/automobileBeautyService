#import "BMGPUImageErosionFilterD.h"
@implementation BMGPUImageErosionFilterD
+ (BOOL)dInitwithradiusbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ZInitbm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
