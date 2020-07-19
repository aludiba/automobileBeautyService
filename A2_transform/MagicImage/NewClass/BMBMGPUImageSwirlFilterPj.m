#import "BMBMGPUImageSwirlFilterPj.h"
@implementation BMBMGPUImageSwirlFilterPj
+ (BOOL)BVinit:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)xVsetinputrotationxatindex:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)pSsetradius:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)cHsetangle:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)uHsetcenter:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
