#import "BMGPUImageErosionFiltere.h"
@implementation BMGPUImageErosionFiltere
+ (BOOL)KInitwithradiusbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)XInitbm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
