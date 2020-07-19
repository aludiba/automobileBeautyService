#import "hbTOCropScrollViewy.h"
@implementation hbTOCropScrollViewy
+ (BOOL)CTouchesbegannWithevent:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)STouchesendedeWithevent:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)bTouchescancelledyWithevent:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
