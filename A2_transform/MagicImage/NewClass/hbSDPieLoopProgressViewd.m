#import "hbSDPieLoopProgressViewd.h"
@implementation hbSDPieLoopProgressViewd
+ (BOOL)zInitwithframe:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)wDrawrect:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
