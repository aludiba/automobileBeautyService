#import "GPUImageFalseColorFilter+Hb.h"
@implementation GPUImageFalseColorFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setFirstColorHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setSecondColorHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setFirstColorRedGreenBlueHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setSecondColorRedGreenBlueHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
