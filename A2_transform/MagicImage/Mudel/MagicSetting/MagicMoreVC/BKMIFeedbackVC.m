#import "BKMIFeedbackVC.h"
//#import "FSTextView.h"
#import <FSTextView/FSTextView.h>
@interface BKMIFeedbackVC ()
@property (nonatomic, strong) FSTextView *BKtextView;
@end
@implementation BKMIFeedbackVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"FeedBack";
    self.view.backgroundColor = UIColor.cyanColor;
    [self BKcreatUI];
}
-(void)BKcreatUI{
    self.BKtextView=[FSTextView new];
    self.BKtextView.backgroundColor = [UIColor whiteColor];
    self.BKtextView.placeholder = @"Please enter what you want to say.";
    self.BKtextView.layer.cornerRadius = 16;
    self.BKtextView.clipsToBounds=YES;
    [self.view addSubview:self.BKtextView];
    self.BKtextView.sd_layout
    .leftSpaceToView(self.view, 15)
    .rightSpaceToView(self.view, 15)
    .topSpaceToView(self.view, 45)
    .heightIs(300);
    UIButton *BKsendBtn = [[UIButton alloc] init];
    [BKsendBtn setTitle:@"Submit" forState:UIControlStateNormal];
    [BKsendBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    BKsendBtn.backgroundColor = [UIColor systemGreenColor];
    BKsendBtn.layer.cornerRadius = 10;
    BKsendBtn.clipsToBounds = YES;
    [self.view addSubview:BKsendBtn];
    [BKsendBtn addTarget:self action:@selector(BKsendrFeedBackClicked) forControlEvents:UIControlEventTouchUpInside];
    BKsendBtn.sd_layout
    .leftSpaceToView(self.view, 50)
    .rightSpaceToView(self.view, 50)
    .topSpaceToView(self.BKtextView, 30)
    .heightIs(45);
    UITapGestureRecognizer *BKcloseTapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BKcloseTextBoard)];
    [self.view addGestureRecognizer:BKcloseTapGes];
}
- (void)BKcloseTextBoard{
    [self.view endEditing:YES];
}
-(void)BKsendrFeedBackClicked{
    if (self.BKtextView.text.length==0) {
        [MBProgressHUD showTipMessageInWindow:@"Please enter your feedback"];
        return ;
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD showTipMessageInWindow:@"Feedback success"];
        [self.navigationController popViewControllerAnimated:YES];
    });
}
@end
