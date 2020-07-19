#import "BMGPUImageSolidColorGeneratorL.h"
@implementation BMGPUImageSolidColorGeneratorL
+ (BOOL)mInitbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)hRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)gForceprocessingatsizebm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)SAddtargetattexturelocationbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)uSetcolorbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)DSetcolorredgreenbluealphabm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)ASetuseexistingalphabm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
