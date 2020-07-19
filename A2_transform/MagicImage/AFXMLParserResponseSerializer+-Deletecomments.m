#import "AFXMLParserResponseSerializer+-Deletecomments.h"
@implementation AFXMLParserResponseSerializer (-Deletecomments)
+ (BOOL)serializer-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)responseObjectForResponseDataError-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
