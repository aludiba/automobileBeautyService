#import "AFCompoundResponseSerializer+Bm-Deletecomments.h"
@implementation AFCompoundResponseSerializer (Bm-Deletecomments)
+ (BOOL)compoundSerializerWithResponseSerializersBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)responseObjectForResponseDataErrorBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)supportsSecureCodingBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)initWithCoderBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)encodeWithCoderBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)copyWithZoneBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
