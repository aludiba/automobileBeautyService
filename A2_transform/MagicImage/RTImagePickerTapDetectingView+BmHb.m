#import "RTImagePickerTapDetectingView+BmHb.h"
@implementation RTImagePickerTapDetectingView (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)touchesEndedWitheventBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)handleSingleTapBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)handleDoubleTapBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)handleTripleTapBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
