#import "BMQMBaseImageViewf.h"
@implementation BMQMBaseImageViewf
+ (BOOL)fInitwithframebm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)iSetimagebm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
