#import "hbGPUImageSolidColorGeneratort.h"
@implementation hbGPUImageSolidColorGeneratort
+ (BOOL)Einit:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)qRendertotexturewithverticesETexturecoordinates:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)nForceprocessingatsize:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)uAddtargetEAttexturelocation:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)XSetcolor:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)LSetcolorredeGreenqBluevAlpha:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)PSetuseexistingalpha:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
