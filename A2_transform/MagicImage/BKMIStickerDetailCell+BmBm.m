#import "BKMIStickerDetailCell+BmBm.h"
@implementation BKMIStickerDetailCell (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setBKpicUrlBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
