#import "BMGPUImageRGBDilationFilterJ.h"
@implementation BMGPUImageRGBDilationFilterJ
+ (BOOL)VInitwithradiusbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)RInitbm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
