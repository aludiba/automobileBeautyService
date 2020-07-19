#import "BMSDPieLoopProgressViewM.h"
@implementation BMSDPieLoopProgressViewM
+ (BOOL)rInitwithframe:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)jDrawrect:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
