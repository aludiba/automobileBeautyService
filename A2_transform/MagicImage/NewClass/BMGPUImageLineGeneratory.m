#import "BMGPUImageLineGeneratory.h"
@implementation BMGPUImageLineGeneratory
+ (BOOL)TInitbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)XDeallocbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)NGeneratelinecoordinatesbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)hRenderlinesfromarraycountframetimebm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)NRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)WSetlinewidthbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sSetlinecolorredgreenbluebm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
