#import "BMBMGPUImageRGBFilterzt.h"
@implementation BMBMGPUImageRGBFilterzt
+ (BOOL)DPinitbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)aXsetredbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)lDsetgreenbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)MMsetbluebm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
