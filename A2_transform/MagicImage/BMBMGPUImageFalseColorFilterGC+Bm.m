#import "BMBMGPUImageFalseColorFilterGC+Bm.h"
@implementation BMBMGPUImageFalseColorFilterGC (Bm)
+ (BOOL)dSinitBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)ICsetfirstcolorBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)KTsetsecondcolorBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)oOsetfirstcolorredzgreenfblueBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)LPsetsecondcolorredegreenrblueBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
