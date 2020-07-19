#import "BKMIStickerDetailCell+Bm.h"
@implementation BKMIStickerDetailCell (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setBKpicUrlBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
