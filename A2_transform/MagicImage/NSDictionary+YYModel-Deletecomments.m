#import "NSDictionary+YYModel-Deletecomments.h"
@implementation NSDictionary (YYModel-Deletecomments)
+ (BOOL)yy_modelDictionaryWithClassJson-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)yy_modelDictionaryWithClassDictionary-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
