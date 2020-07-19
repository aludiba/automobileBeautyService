#import "TOCropScrollView+Hb.h"
@implementation TOCropScrollView (Hb)
+ (BOOL)touchesBeganWitheventHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)touchesEndedWitheventHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)touchesCancelledWitheventHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
