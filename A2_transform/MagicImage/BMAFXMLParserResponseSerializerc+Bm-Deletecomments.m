#import "BMAFXMLParserResponseSerializerc+Bm-Deletecomments.h"
@implementation BMAFXMLParserResponseSerializerc (Bm-Deletecomments)
+ (BOOL)LSerializerbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)gInitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)bResponseobjectforresponsedataerrorbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}

@end
