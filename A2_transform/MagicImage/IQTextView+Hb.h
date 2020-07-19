#import "IQKeyboardManagerConstants.h"
#import <UIKit/UITextView.h>
#import "IQTextView.h"
#import <UIKit/NSTextContainer.h>
#import <UIKit/UILabel.h>
#import <UIKit/UINibLoading.h>

@interface IQTextView (Hb)
+ (BOOL)initializeHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)awakeFromNibHb:(NSInteger)hb;
+ (BOOL)refreshPlaceholderHb:(NSInteger)hb;
+ (BOOL)setTextHb:(NSInteger)hb;
+ (BOOL)setAttributedTextHb:(NSInteger)hb;
+ (BOOL)setFontHb:(NSInteger)hb;
+ (BOOL)setTextAlignmentHb:(NSInteger)hb;
+ (BOOL)layoutSubviewsHb:(NSInteger)hb;
+ (BOOL)setPlaceholderHb:(NSInteger)hb;
+ (BOOL)setAttributedPlaceholderHb:(NSInteger)hb;
+ (BOOL)setPlaceholderTextColorHb:(NSInteger)hb;
+ (BOOL)placeholderInsetsHb:(NSInteger)hb;
+ (BOOL)placeholderExpectedFrameHb:(NSInteger)hb;
+ (BOOL)IQ_PlaceholderLabelHb:(NSInteger)hb;
+ (BOOL)delegateHb:(NSInteger)hb;
+ (BOOL)intrinsicContentSizeHb:(NSInteger)hb;

@end
