//
//  BTScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "BTScoringSaveTableViewCell.h"
#import "BTScorecardViewModel.h"

@interface BTScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *BTSaveButton;//保存按钮
@end
@implementation BTScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self BTSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)BTSetContentView{
    [self.contentView addSubview:self.BTSaveButton];
    
    [self.BTSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(120);
        make.top.equalTo(self.contentView).offset(20);
        make.trailing.equalTo(self.contentView).offset(-120);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
}
- (void)BTSave:(UIButton *)sender{
    if (self.BTScorecardSaveB) {
        self.BTScorecardSaveB(self);
    }
}
- (void)setBTModel:(BTScorecardViewModel *)BTModel{
    _BTModel = BTModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)BTSaveButton{
    if (!_BTSaveButton) {
        _BTSaveButton = [[UIButton alloc] init];
        [_BTSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_BTSaveButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        _BTSaveButton.backgroundColor = [UIColor systemPurpleColor];
        _BTSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _BTSaveButton.layer.cornerRadius = 8.0f;
        _BTSaveButton.layer.masksToBounds = YES;
        _BTSaveButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _BTSaveButton.layer.borderWidth = 2.0f;
        _BTSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_BTSaveButton addTarget:self action:@selector(BTSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTSaveButton;
}
@end
