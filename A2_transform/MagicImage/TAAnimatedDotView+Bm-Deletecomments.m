#import "TAAnimatedDotView+Bm-Deletecomments.h"
@implementation TAAnimatedDotView (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)initWithFrameBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}
+ (BOOL)initWithCoderBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)setDotColorBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)initializationBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)changeActivityStateBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)animateToActiveStateBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)animateToDeactiveStateBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
