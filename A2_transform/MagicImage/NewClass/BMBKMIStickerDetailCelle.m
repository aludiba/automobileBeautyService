#import "BMBKMIStickerDetailCelle.h"
@implementation BMBKMIStickerDetailCelle
+ (BOOL)KInitwithframe:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)ASetbkpicurl:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
