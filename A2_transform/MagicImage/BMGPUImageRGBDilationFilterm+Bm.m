#import "BMGPUImageRGBDilationFilterm+Bm.h"
@implementation BMGPUImageRGBDilationFilterm (Bm)
+ (BOOL)EInitwithradiusBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)uinitBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
