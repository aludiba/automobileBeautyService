#import "BMRTImagePickerUnauthorizedViewL.h"
@implementation BMRTImagePickerUnauthorizedViewL
+ (BOOL)gInitwithframe:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)hPermissionbuttonpressed:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
