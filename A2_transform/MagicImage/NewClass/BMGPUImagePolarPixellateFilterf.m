#import "BMGPUImagePolarPixellateFilterf.h"
@implementation BMGPUImagePolarPixellateFilterf
+ (BOOL)ginit:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)vSetinputrotationOAtindex:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)jSetpixelsize:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)USetcenter:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
