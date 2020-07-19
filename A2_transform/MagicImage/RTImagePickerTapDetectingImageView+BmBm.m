#import "RTImagePickerTapDetectingImageView+BmBm.h"
@implementation RTImagePickerTapDetectingImageView (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)initWithImageBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)initWithImageHighlightedimageBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)touchesEndedWitheventBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)handleSingleTapBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)handleDoubleTapBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)handleTripleTapBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
