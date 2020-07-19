#import <UIKit/UIKit.h>
#import "RTImagePickerToolbarView.h"
@interface RTImagePickerNavigationController : UINavigationController
@property (nonatomic, weak) RTImagePickerToolbarView *toolBarView;
- (void)setupToolBarView:(RTImagePickerToolbarView *)toolBarView;
@end
