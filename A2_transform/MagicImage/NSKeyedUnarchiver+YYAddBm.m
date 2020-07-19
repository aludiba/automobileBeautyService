#import "NSKeyedUnarchiver+YYAddBm.h"
@implementation NSKeyedUnarchiver (YYAddBm)
+ (BOOL)unarchiveObjectWithDataExceptionBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)unarchiveObjectWithFileExceptionBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
