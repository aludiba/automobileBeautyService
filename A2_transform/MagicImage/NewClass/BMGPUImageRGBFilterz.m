#import "BMGPUImageRGBFilterz.h"
@implementation BMGPUImageRGBFilterz
+ (BOOL)Pinit:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)XSetred:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)DSetgreen:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)mSetblue:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
