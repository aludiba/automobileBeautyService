#import "TADotView+BmBmHb.h"
@implementation TADotView (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)initWithFrameBmBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)initWithCoderBmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)initializationBmBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)changeActivityStateBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
