#import "BMSDTransparentPieProgressViewS+BmHb.h"
@implementation BMSDTransparentPieProgressViewS (BmHb)
+ (BOOL)XInitwithframeBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)VDrawrectBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
