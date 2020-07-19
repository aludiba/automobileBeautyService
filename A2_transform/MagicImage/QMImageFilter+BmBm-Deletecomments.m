#import "QMImageFilter+BmBm-Deletecomments.h"
@implementation QMImageFilter (BmBm-Deletecomments)
+ (BOOL)initWithFilterModelBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)bindQMTextureBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)setAlphaBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
