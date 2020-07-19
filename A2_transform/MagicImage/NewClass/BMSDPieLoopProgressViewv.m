#import "BMSDPieLoopProgressViewv.h"
@implementation BMSDPieLoopProgressViewv
+ (BOOL)fInitwithframebm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)JDrawrectbm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
