#import "BMGPUImagePolarPixellateFilteru.h"
@implementation BMGPUImagePolarPixellateFilteru
+ (BOOL)QInitbmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)jSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)vSetpixelsizebmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)vSetcenterbmbm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
