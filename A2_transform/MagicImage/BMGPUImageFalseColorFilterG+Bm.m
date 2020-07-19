#import "BMGPUImageFalseColorFilterG+Bm.h"
@implementation BMGPUImageFalseColorFilterG (Bm)
+ (BOOL)SinitBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)CSetfirstcolorBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)TSetsecondcolorBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)OSetfirstcolorredZGreenfBlueBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)PSetsecondcolorredeGreenRBlueBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
