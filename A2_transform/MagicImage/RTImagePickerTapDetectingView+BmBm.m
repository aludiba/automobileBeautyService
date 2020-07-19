#import "RTImagePickerTapDetectingView+BmBm.h"
@implementation RTImagePickerTapDetectingView (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)touchesEndedWitheventBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)handleSingleTapBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)handleDoubleTapBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)handleTripleTapBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
