#import "SDBallProgressView+BmHb.h"
@implementation SDBallProgressView (BmHb)
+ (BOOL)drawRectBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
