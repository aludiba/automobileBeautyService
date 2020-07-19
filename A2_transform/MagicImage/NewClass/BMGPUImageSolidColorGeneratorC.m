#import "BMGPUImageSolidColorGeneratorC.h"
@implementation BMGPUImageSolidColorGeneratorC
+ (BOOL)FInitbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)yRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)fForceprocessingatsizebm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)zAddtargetattexturelocationbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)tSetcolorbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)QSetcolorredgreenbluealphabm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)fSetuseexistingalphabm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
