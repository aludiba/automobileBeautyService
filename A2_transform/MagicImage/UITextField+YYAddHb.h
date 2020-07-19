#import <UIKit/UIKit.h>
#import "UITextField+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface UITextField (YYAddHb)
+ (BOOL)selectAllTextHb:(NSInteger)hb;
+ (BOOL)setSelectedRangeHb:(NSInteger)hb;

@end
