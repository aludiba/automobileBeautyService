#import "NSKeyedUnarchiver+YYAddHb.h"
@implementation NSKeyedUnarchiver (YYAddHb)
+ (BOOL)unarchiveObjectWithDataExceptionHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)unarchiveObjectWithFileExceptionHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
