#import "BMGPUImageSwirlFilterP.h"
@implementation BMGPUImageSwirlFilterP
+ (BOOL)vinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)VSetinputrotationxAtindex:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sSetradius:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)HSetangle:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)HSetcenter:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
