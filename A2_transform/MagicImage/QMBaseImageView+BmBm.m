#import "QMBaseImageView+BmBm.h"
@implementation QMBaseImageView (BmBm)
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setImageBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
