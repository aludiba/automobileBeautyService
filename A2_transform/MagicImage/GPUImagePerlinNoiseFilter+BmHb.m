#import "GPUImagePerlinNoiseFilter+BmHb.h"
@implementation GPUImagePerlinNoiseFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setScaleBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setColorStartBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setColorFinishBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
