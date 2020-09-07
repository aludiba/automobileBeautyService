#import "LCDMIWebVC.h"
#import <Webkit/Webkit.h>
@interface LCDMIWebVC ()
@property (nonatomic, strong) WKWebView *LCDmywebView;
@end
@implementation LCDMIWebVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.LCDmywebView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight-NavBarHeight)];
    [self.view addSubview:self.LCDmywebView];
    NSURLRequest *LCDrequest = [NSURLRequest requestWithURL:[NSURL URLWithString:self.LCDurlStr]];
    [self.LCDmywebView loadRequest:LCDrequest];
}
@end
