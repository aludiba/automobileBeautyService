#import "BMRACTupleSequenceJ+Bm-Deletecomments.h"
@implementation BMRACTupleSequenceJ (Bm-Deletecomments)
+ (BOOL)VSequencewithtuplebackingarrayoffsetbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)AHeadbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)aTailbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)oArraybmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)iDescriptionbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}

@end
