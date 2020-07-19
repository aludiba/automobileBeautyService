#import "BMBMGPUImageSharpenFiltergq.h"
@implementation BMBMGPUImageSharpenFiltergq
+ (BOOL)hPinitbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)VBsetupfilterforsizebm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)mOsetsharpnessbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
