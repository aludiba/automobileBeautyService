#import "BMGPUImageSharpenFilterc.h"
@implementation BMGPUImageSharpenFilterc
+ (BOOL)bInitbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ESetupfilterforsizebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)bSetsharpnessbm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
