#import "BMGPUImageRGBDilationFilterX.h"
@implementation BMGPUImageRGBDilationFilterX
+ (BOOL)FInitwithradiusbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)GInitbm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
