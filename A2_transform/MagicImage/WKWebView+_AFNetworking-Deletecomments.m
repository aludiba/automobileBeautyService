#import "WKWebView+_AFNetworking-Deletecomments.h"
@implementation WKWebView (_AFNetworking-Deletecomments)
+ (BOOL)af_URLSessionTask-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)af_setURLSessionTask-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
