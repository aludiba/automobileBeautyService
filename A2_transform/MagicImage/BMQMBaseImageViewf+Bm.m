#import "BMQMBaseImageViewf+Bm.h"
@implementation BMQMBaseImageViewf (Bm)
+ (BOOL)fInitwithframebmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)iSetimagebmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
