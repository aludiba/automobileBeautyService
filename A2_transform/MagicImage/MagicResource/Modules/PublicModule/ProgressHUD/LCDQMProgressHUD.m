#import "LCDQMProgressHUD.h"
#import <DGActivityIndicatorView.h>
#import "Constants.h"
#import "UIColor+Additions.h"
#define kProgressHUDColor       [UIColor colorWithRGBHex:0xFB9088]
static DGActivityIndicatorView  *LCDactivityIndicatorView;
@implementation LCDQMProgressHUD
+ (void)LCDshow
{
    if (LCDactivityIndicatorView.animating) {
        return;
    }
    void (^block)(void) = ^{
        if (!LCDactivityIndicatorView) {
            UIWindow *LCDwindow = [UIApplication sharedApplication].keyWindow;
            LCDactivityIndicatorView = [[DGActivityIndicatorView alloc] initWithType:DGActivityIndicatorAnimationTypeLineScalePulseOut tintColor:kMainThemeColor size:40.0f];
            LCDactivityIndicatorView.frame = [UIScreen mainScreen].bounds;
            [LCDwindow addSubview:LCDactivityIndicatorView];
        }
        [LCDactivityIndicatorView startAnimating];
    };
    if([NSThread isMainThread]) {
        block();
    }else {
        dispatch_async(dispatch_get_main_queue(), block);
    }
}
+ (void)LCDhide
{
    void (^block)(void) = ^{
        [LCDactivityIndicatorView stopAnimating];
    };
    if([NSThread isMainThread]) {
        block();
    }else {
        dispatch_async(dispatch_get_main_queue(), block);
    }
}
@end
