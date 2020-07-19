#import "BMGPUImageSharpenFilterg.h"
@implementation BMGPUImageSharpenFilterg
+ (BOOL)PInitbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)BSetupfilterforsizebm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)OSetsharpnessbm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
