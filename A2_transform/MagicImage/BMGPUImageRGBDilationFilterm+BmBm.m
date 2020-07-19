#import "BMGPUImageRGBDilationFilterm+BmBm.h"
@implementation BMGPUImageRGBDilationFilterm (BmBm)
+ (BOOL)EInitwithradiusBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)uinitBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
