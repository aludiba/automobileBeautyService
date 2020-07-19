#import "QMBaseImageView+Bm.h"
@implementation QMBaseImageView (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setImageBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
