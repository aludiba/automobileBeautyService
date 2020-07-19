#import "BMGPUImageSolidColorGeneratorY.h"
@implementation BMGPUImageSolidColorGeneratorY
+ (BOOL)Ninit:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)bRendertotexturewithverticeshTexturecoordinates:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)WForceprocessingatsize:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)cAddtargetSAttexturelocation:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)lSetcolor:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)oSetcolorredVGreenGBlueuAlpha:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)GSetuseexistingalpha:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
