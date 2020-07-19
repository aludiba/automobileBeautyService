#import "BMGPUImageCropFilterL.h"
@implementation BMGPUImageCropFilterL
+ (BOOL)aInitwithcropregion:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)Dinit:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)ASetinputsizegAtindex:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)xcalculateCropTextureCoordinates:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)lNewframereadyattimeqAtindex:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)OSetcropregion:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)xSetinputrotationPAtindex:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
