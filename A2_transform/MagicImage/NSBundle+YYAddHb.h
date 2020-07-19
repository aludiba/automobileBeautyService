#import <Foundation/Foundation.h>
#import "NSBundle+YYAdd.h"
#import "NSString+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface NSBundle (YYAddHb)
+ (BOOL)preferredScalesHb:(NSInteger)hb;
+ (BOOL)pathForScaledResourceOftypeIndirectoryHb:(NSInteger)hb;
+ (BOOL)pathForScaledResourceOftypeHb:(NSInteger)hb;
+ (BOOL)pathForScaledResourceOftypeIndirectoryHb:(NSInteger)hb;

@end
