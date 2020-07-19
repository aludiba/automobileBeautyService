#import "BMQMFrameModelT+Bm.h"
@implementation BMQMFrameModelT (Bm)
+ (BOOL)CbuildFrameModelsBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
