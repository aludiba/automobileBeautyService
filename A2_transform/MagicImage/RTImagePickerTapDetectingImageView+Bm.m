#import "RTImagePickerTapDetectingImageView+Bm.h"
@implementation RTImagePickerTapDetectingImageView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)initWithImageBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)initWithImageHighlightedimageBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)touchesEndedWitheventBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)handleSingleTapBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)handleDoubleTapBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)handleTripleTapBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
