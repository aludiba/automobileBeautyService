#import "BMSDTransparentPieProgressViewS.h"
@implementation BMSDTransparentPieProgressViewS
+ (BOOL)XInitwithframe:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)VDrawrect:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
