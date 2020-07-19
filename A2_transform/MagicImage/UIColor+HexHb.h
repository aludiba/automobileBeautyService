#import <UIKit/UIKit.h>

@interface UIColor (HexHb)
+ (BOOL)integerValueFromHexStringHb:(NSInteger)hb;
+ (BOOL)colorWithHexStringHb:(NSInteger)hb;
+ (BOOL)colorWithHexStringAlphaHb:(NSInteger)hb;
+ (BOOL)colorWithGrayScaleHb:(NSInteger)hb;

@end
