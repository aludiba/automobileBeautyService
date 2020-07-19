#import "BKMIStickerDetailCell+BmHb.h"
@implementation BKMIStickerDetailCell (BmHb)
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setBKpicUrlBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
