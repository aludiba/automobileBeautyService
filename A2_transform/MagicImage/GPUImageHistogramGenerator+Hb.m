#import "GPUImageHistogramGenerator+Hb.h"
@implementation GPUImageHistogramGenerator (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)setBackgroundColorRedGreenBlueAlphaHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
