#import "BMRACBehaviorSubjectp+Bm-Deletecomments.h"
@implementation BMRACBehaviorSubjectp (Bm-Deletecomments)
+ (BOOL)ABehaviorsubjectwithdefaultvalueBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)GSubscribeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)CSendnextBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
