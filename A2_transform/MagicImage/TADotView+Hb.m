#import "TADotView+Hb.h"
@implementation TADotView (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)initWithFrameHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)initializationHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)changeActivityStateHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
