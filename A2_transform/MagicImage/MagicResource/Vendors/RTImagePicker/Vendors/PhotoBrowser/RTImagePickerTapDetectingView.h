#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@protocol RTImagePickerTapDetectingViewDelegate;
@interface RTImagePickerTapDetectingView : UIView
@property (nonatomic, weak) id <RTImagePickerTapDetectingViewDelegate> tapDelegate;
@end
@protocol RTImagePickerTapDetectingViewDelegate <NSObject>
@optional
- (void)view:(UIView *)view singleTapDetected:(UITouch *)touch;
- (void)view:(UIView *)view doubleTapDetected:(UITouch *)touch;
- (void)view:(UIView *)view tripleTapDetected:(UITouch *)touch;
@end