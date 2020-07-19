#import "RTImagePickerNavigationController.h"
@interface RTImagePickerNavigationController ()
@end
@implementation RTImagePickerNavigationController
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)setupToolBarView:(RTImagePickerToolbarView *)toolBarView
{
    self.toolBarView = (RTImagePickerToolbarView *)toolBarView;
    [self.view addSubview:_toolBarView];
}
@end
