#import "BMGPUImagePolarPixellateFilterB.h"
@implementation BMGPUImagePolarPixellateFilterB
+ (BOOL)rinit:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)bSetinputrotationmAtindex:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)cSetpixelsize:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)ESetcenter:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
