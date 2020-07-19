#import "GPUImageFalseColorFilter+BmBmBmHbHb.h"
@implementation GPUImageFalseColorFilter (BmBmBmHbHb)
+ (BOOL)initBmBmBmHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setFirstColorBmBmBmHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setSecondColorBmBmBmHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setFirstColorRedGreenBlueBmBmBmHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setSecondColorRedGreenBlueBmBmBmHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
