#import "BMBMGPUImageAverageColorDq.h"
@implementation BMBMGPUImageAverageColorDq
+ (BOOL)KXinitbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)ASdeallocbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)SRrendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)QQsetinputrotationatindexbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)JUextractaveragecoloratframetimebm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
