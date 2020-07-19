#import "BMGPUImageSwirlFilterq.h"
@implementation BMGPUImageSwirlFilterq
+ (BOOL)Ginit:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)YSetinputrotationqAtindex:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)qSetradius:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)fSetangle:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)XSetcenter:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
