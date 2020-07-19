#import "BMBMGPUImageFalseColorFilterQx.h"
@implementation BMBMGPUImageFalseColorFilterQx
+ (BOOL)KXinitbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)vJsetfirstcolorbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)QUsetsecondcolorbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)lVsetfirstcolorredgreenbluebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)sCsetsecondcolorredgreenbluebm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
