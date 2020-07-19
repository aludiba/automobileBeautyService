#import "QMBaseImageView+BmHb.h"
@implementation QMBaseImageView (BmHb)
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setImageBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
