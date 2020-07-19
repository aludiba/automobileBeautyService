#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <CoreText/CoreText.h>
#import "UIFont+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface UIFont (YYAdd-Deletecomments)
+ (BOOL)isBold-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isItalic-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isMonoSpace-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isColorGlyphs-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fontWeight-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fontWithBold-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fontWithItalic-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fontWithBoldItalic-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fontWithNormal-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fontWithCTFont-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fontWithCGFontSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)CTFontRef CF_RETURNS_RETAINED-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)CGFontRef CF_RETURNS_RETAINED-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)loadFontFromPath-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)unloadFontFromPath-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)loadFontFromData-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)unloadFontFromData-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dataFromFont-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dataFromCGFont-Deletecomments:(NSInteger)-deleteComments;

@end
