#import "BMSDTransparentPieProgressViewi.h"
@implementation BMSDTransparentPieProgressViewi
+ (BOOL)PInitwithframe:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)WDrawrect:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
