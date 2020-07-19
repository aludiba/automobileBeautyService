#import "TOCropOverlayView+Hb.h"
@implementation TOCropOverlayView (Hb)
+ (BOOL)initWithFrameHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setupHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setFrameHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)didMoveToSuperviewHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)layoutLinesHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setGridHiddenAnimatedHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setDisplayHorizontalGridLinesHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setDisplayVerticalGridLinesHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setGridHiddenHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)createNewLineViewHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
