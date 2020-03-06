//
//  CAScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CAScoringSaveTableViewCell.h"
#import "CAScorecardViewModel.h"

@interface CAScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *CASaveButton;//保存按钮
@end
@implementation CAScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemGreenColor];
        [self CASetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)CASetContentView{
    [self.contentView addSubview:self.CASaveButton];
    
    [self.CASaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(110);
        make.top.equalTo(self.contentView).offset(5);
        make.trailing.equalTo(self.contentView).offset(-110);
        make.height.mas_equalTo(50);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
}
- (void)CASave:(UIButton *)sender{
    if (self.CAScorecardSaveB) {
        self.CAScorecardSaveB(self);
    }
}
- (void)setCAModel:(CAScorecardViewModel *)CAModel{
    _CAModel = CAModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)CASaveButton{
    if (!_CASaveButton) {
        _CASaveButton = [[UIButton alloc] init];
        [_CASaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_CASaveButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        _CASaveButton.backgroundColor = [UIColor systemPurpleColor];
        _CASaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        _CASaveButton.layer.cornerRadius = 8.0f;
        _CASaveButton.layer.masksToBounds = YES;
        _CASaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CASaveButton addTarget:self action:@selector(CASave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CASaveButton;
}
@end
