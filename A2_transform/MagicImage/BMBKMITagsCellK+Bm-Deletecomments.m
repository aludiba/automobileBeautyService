#import "BMBKMITagsCellK+Bm-Deletecomments.h"
@implementation BMBKMITagsCellK (Bm-Deletecomments)
+ (BOOL)dInitwithstyleBReuseidentifierBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)bSetbkmodelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
