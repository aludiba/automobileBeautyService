#import "RTImagePickerTapDetectingView+Bm.h"
@implementation RTImagePickerTapDetectingView (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)touchesEndedWitheventBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)handleSingleTapBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)handleDoubleTapBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)handleTripleTapBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
