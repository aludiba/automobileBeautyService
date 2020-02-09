//
//  WBYBKOKScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "WBYBKOKScoringSaveTableViewCell.h"
#import "WBYBKOKScorecardViewModel.h"

@interface WBYBKOKScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *WBYBKOKSaveButton;//保存按钮
@end
@implementation WBYBKOKScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self WBYBKOKSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)WBYBKOKSetContentView{
    [self.contentView addSubview:self.WBYBKOKSaveButton];
    
    [self.WBYBKOKSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(120);
        make.top.equalTo(self.contentView).offset(20);
        make.trailing.equalTo(self.contentView).offset(-120);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
}
- (void)WBYBKOKSave:(UIButton *)sender{
    if (self.WBYBKOKScorecardSaveB) {
        self.WBYBKOKScorecardSaveB(self);
    }
}
- (void)setWBYBKOKModel:(WBYBKOKScorecardViewModel *)WBYBKOKModel{
    _WBYBKOKModel = WBYBKOKModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)WBYBKOKSaveButton{
    if (!_WBYBKOKSaveButton) {
        _WBYBKOKSaveButton = [[UIButton alloc] init];
        [_WBYBKOKSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_WBYBKOKSaveButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        _WBYBKOKSaveButton.backgroundColor = [UIColor systemPurpleColor];
        _WBYBKOKSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _WBYBKOKSaveButton.layer.cornerRadius = 8.0f;
        _WBYBKOKSaveButton.layer.masksToBounds = YES;
        _WBYBKOKSaveButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _WBYBKOKSaveButton.layer.borderWidth = 2.0f;
        _WBYBKOKSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_WBYBKOKSaveButton addTarget:self action:@selector(WBYBKOKSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKSaveButton;
}
@end
