#import "LCDMIFeedbackVC.h"
//#import "FSTextView.h"
#import <FSTextView/FSTextView.h>
@interface LCDMIFeedbackVC ()
@property (nonatomic, strong) FSTextView *LCDtextView;
@end
@implementation LCDMIFeedbackVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"FeedBack";
    self.view.backgroundColor = UIColor.cyanColor;
    [self LCDcreatUI];
}
-(void)LCDcreatUI{
    self.LCDtextView=[FSTextView new];
    self.LCDtextView.backgroundColor = [UIColor whiteColor];
    self.LCDtextView.placeholder = @"Please enter what you want to say.";
    self.LCDtextView.layer.cornerRadius = 16;
    self.LCDtextView.clipsToBounds=YES;
    [self.view addSubview:self.LCDtextView];
    self.LCDtextView.sd_layout
    .leftSpaceToView(self.view, 15)
    .rightSpaceToView(self.view, 15)
    .topSpaceToView(self.view, 45)
    .heightIs(300);
    UIButton *LCDsendBtn = [[UIButton alloc] init];
    [LCDsendBtn setTitle:@"Submit" forState:UIControlStateNormal];
    [LCDsendBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    LCDsendBtn.backgroundColor = [UIColor systemGreenColor];
    LCDsendBtn.layer.cornerRadius = 10;
    LCDsendBtn.clipsToBounds = YES;
    [self.view addSubview:LCDsendBtn];
    [LCDsendBtn addTarget:self action:@selector(LCDsendrFeedBackClicked) forControlEvents:UIControlEventTouchUpInside];
    LCDsendBtn.sd_layout
    .leftSpaceToView(self.view, 50)
    .rightSpaceToView(self.view, 50)
    .topSpaceToView(self.LCDtextView, 30)
    .heightIs(45);
    UITapGestureRecognizer *LCDcloseTapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LCDcloseTextBoard)];
    [self.view addGestureRecognizer:LCDcloseTapGes];
}
- (void)LCDcloseTextBoard{
    [self.view endEditing:YES];
}
-(void)LCDsendrFeedBackClicked{
    if (self.LCDtextView.text.length==0) {
        [MBProgressHUD showTipMessageInWindow:@"Please enter your feedback"];
        return ;
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD showTipMessageInWindow:@"Feedback success"];
        [self.navigationController popViewControllerAnimated:YES];
    });
}
@end
