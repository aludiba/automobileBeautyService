#import "BMBMGPUImageSharpenFilterZk.h"
@implementation BMBMGPUImageSharpenFilterZk
+ (BOOL)NQinitbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)pCsetupfilterforsizebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)FTsetsharpnessbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
