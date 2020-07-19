#import "NSKeyedUnarchiver+YYAddHbHb.h"
@implementation NSKeyedUnarchiver (YYAddHbHb)
+ (BOOL)unarchiveObjectWithDataExceptionHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)unarchiveObjectWithFileExceptionHbHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
