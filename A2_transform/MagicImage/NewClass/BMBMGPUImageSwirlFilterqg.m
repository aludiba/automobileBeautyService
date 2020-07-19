#import "BMBMGPUImageSwirlFilterqg.h"
@implementation BMBMGPUImageSwirlFilterqg
+ (BOOL)xGinit:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)mYsetinputrotationqatindex:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)GQsetradius:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)QFsetangle:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)lXsetcenter:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
