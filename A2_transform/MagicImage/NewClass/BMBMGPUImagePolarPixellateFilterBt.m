#import "BMBMGPUImagePolarPixellateFilterBt.h"
@implementation BMBMGPUImagePolarPixellateFilterBt
+ (BOOL)ORinit:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)dBsetinputrotationmatindex:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)mCsetpixelsize:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)uEsetcenter:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
