#import "BMBMGPUImageSwirlFilterqy.h"
@implementation BMBMGPUImageSwirlFilterqy
+ (BOOL)jGinit:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)IYsetinputrotationqatindex:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)mQsetradius:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)AFsetangle:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)DXsetcenter:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
