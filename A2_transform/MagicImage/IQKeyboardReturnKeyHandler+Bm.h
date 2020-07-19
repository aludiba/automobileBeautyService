#import "IQKeyboardManagerConstants.h"
#import <Foundation/NSObject.h>
#import <Foundation/NSObjCRuntime.h>
#import <UIKit/UITextInputTraits.h>
#import "IQKeyboardReturnKeyHandler.h"
#import "IQKeyboardManager.h"
#import "IQUIView+Hierarchy.h"
#import "IQNSArray+Sort.h"
#import <UIKit/UITextField.h>
#import <UIKit/UITextView.h>
#import <UIKit/UIViewController.h>

@interface IQKeyboardReturnKeyHandler (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithViewControllerBm:(NSInteger)BM;
+ (BOOL)textFieldViewCachedInfoBm:(NSInteger)BM;
+ (BOOL)addResponderFromViewBm:(NSInteger)BM;
+ (BOOL)removeResponderFromViewBm:(NSInteger)BM;
+ (BOOL)removeTextFieldViewBm:(NSInteger)BM;
+ (BOOL)addTextFieldViewBm:(NSInteger)BM;
+ (BOOL)updateReturnKeyTypeOnTextFieldBm:(NSInteger)BM;
+ (BOOL)goToNextResponderOrResignBm:(NSInteger)BM;
+ (BOOL)textFieldShouldBeginEditingBm:(NSInteger)BM;
+ (BOOL)textFieldDidBeginEditingBm:(NSInteger)BM;
+ (BOOL)textFieldShouldEndEditingBm:(NSInteger)BM;
+ (BOOL)textFieldDidEndEditingBm:(NSInteger)BM;
+ (BOOL)textFieldDidEndEditingReasonBm:(NSInteger)BM;
+ (BOOL)textFieldShouldchangecharactersinrangeReplacementstringBm:(NSInteger)BM;
+ (BOOL)textFieldShouldClearBm:(NSInteger)BM;
+ (BOOL)textFieldShouldReturnBm:(NSInteger)BM;
+ (BOOL)textViewShouldBeginEditingBm:(NSInteger)BM;
+ (BOOL)textViewShouldEndEditingBm:(NSInteger)BM;
+ (BOOL)textViewDidBeginEditingBm:(NSInteger)BM;
+ (BOOL)textViewDidEndEditingBm:(NSInteger)BM;
+ (BOOL)textViewShouldchangetextinrangeReplacementtextBm:(NSInteger)BM;
+ (BOOL)textViewDidChangeBm:(NSInteger)BM;
+ (BOOL)textViewDidChangeSelectionBm:(NSInteger)BM;
+ (BOOL)textViewShouldinteractwithurlInrangeInteractionBm:(NSInteger)BM;
+ (BOOL)textViewShouldinteractwithtextattachmentInrangeInteractionBm:(NSInteger)BM;
+ (BOOL)textViewShouldinteractwithurlInrangeBm:(NSInteger)BM;
+ (BOOL)textViewShouldinteractwithtextattachmentInrangeBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;

@end
