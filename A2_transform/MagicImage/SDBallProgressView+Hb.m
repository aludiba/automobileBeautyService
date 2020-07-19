#import "SDBallProgressView+Hb.h"
@implementation SDBallProgressView (Hb)
+ (BOOL)drawRectHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
