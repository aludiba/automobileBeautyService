#import "NSKeyedUnarchiver+YYAddBmBmHb.h"
@implementation NSKeyedUnarchiver (YYAddBmBmHb)
+ (BOOL)unarchiveObjectWithDataExceptionBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)unarchiveObjectWithFileExceptionBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
