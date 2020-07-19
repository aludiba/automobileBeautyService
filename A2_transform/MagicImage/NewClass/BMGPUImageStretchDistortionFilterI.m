#import "BMGPUImageStretchDistortionFilterI.h"
@implementation BMGPUImageStretchDistortionFilterI
+ (BOOL)DInitbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)pSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)oSetcenterbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
