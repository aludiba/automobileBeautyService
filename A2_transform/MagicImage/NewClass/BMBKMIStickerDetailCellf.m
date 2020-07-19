#import "BMBKMIStickerDetailCellf.h"
@implementation BMBKMIStickerDetailCellf
+ (BOOL)gInitwithframe:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)XSetbkpicurl:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
