//
//  GHClockInViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHClockInViewController.h"
#import "GHGuideModel.h"
@interface GHClockInViewController ()<UITextViewDelegate>
@property(nonatomic, strong)UILabel *clockInDateLabel;
@property(nonatomic, strong)UIImageView *projectImgView;
@property(nonatomic, strong)UILabel *projectLabel;
@property(nonatomic, strong)UITextView *clockInLogTextView;
@property(nonatomic, strong)UIButton *saveButton;
@property(nonatomic, strong)UIButton *allLogButton;
@end

@implementation GHClockInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡日志", nil);
    [self setContentView];
}
- (void)setContentView{
    
}
#pragma mark - 属性懒加载
- (UILabel *)clockInDateLabel{
    if (!_clockInDateLabel) {
        _clockInDateLabel = [[UILabel alloc] init];
        _clockInDateLabel.backgroundColor = [UIColor whiteColor];
        _clockInDateLabel.textColor = [UIColor blackColor];
        _clockInDateLabel.font = [UIFont systemFontOfSize:12];
        _clockInDateLabel.layer.cornerRadius = 4.0f;
        _clockInDateLabel.layer.masksToBounds = YES;
        _clockInDateLabel.numberOfLines = 0;
    }
    return _clockInDateLabel;
}
- (UIImageView *)projectImgView{
    if (!_projectImgView) {
        _projectImgView = [[UIImageView alloc] init];
    }
    return _projectImgView;
}
- (UILabel *)projectLabel{
    if (!_projectLabel) {
        _projectLabel = [[UILabel alloc] init];
        _projectLabel.backgroundColor = [UIColor whiteColor];
        _projectLabel.textColor = [UIColor blackColor];
        _projectLabel.font = [UIFont systemFontOfSize:13];
        _projectLabel.numberOfLines = 0;
    }
    return _projectLabel;
}
- (UITextView *)clockInLogTextView{
    if (!_clockInLogTextView) {
        _clockInLogTextView = [[UITextView alloc] init];
        _clockInLogTextView.delegate = self;
        _clockInLogTextView.backgroundColor = GHH_Color(242, 242, 242, 1);
        _clockInLogTextView.layer.cornerRadius = 8.0f;
        _clockInLogTextView.layer.masksToBounds = YES;
        _clockInLogTextView.textColor = [UIColor blackColor];
        _clockInLogTextView.font = [UIFont systemFontOfSize:14];
        [_clockInLogTextView sizeToFit];
    }
    return _clockInLogTextView;
}
- (UIButton *)saveButton{
    if (!_saveButton) {
        _saveButton = [[UIButton alloc] init];
        [_saveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        _saveButton.backgroundColor = [UIColor grayColor];
        _saveButton.layer.cornerRadius = 15.0f;
        _saveButton.layer.masksToBounds = YES;
        [_saveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_saveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _saveButton;
}
- (UIButton *)allLogButton{
    if (!_allLogButton) {
        _allLogButton = [[UIButton alloc] init];
        [_allLogButton setTitle:NSLocalizedString(@"所有日志", nil) forState:UIControlStateNormal];
        [_allLogButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_allLogButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
    }
    return _allLogButton;
}
@end
