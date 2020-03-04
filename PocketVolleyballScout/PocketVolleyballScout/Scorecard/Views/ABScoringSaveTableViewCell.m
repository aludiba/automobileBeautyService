//
//  ABScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABScoringSaveTableViewCell.h"
#import "ABScorecardViewModel.h"

@interface ABScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *ABSaveButton;//保存按钮
@end
@implementation ABScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self ABSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)ABSetContentView{
    [self.contentView addSubview:self.ABSaveButton];
    
    [self.ABSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(110);
        make.top.equalTo(self.contentView).offset(5);
        make.trailing.equalTo(self.contentView).offset(-110);
        make.height.mas_equalTo(50);
        make.bottom.equalTo(self.contentView).offset(-5);
    }];
}
- (void)ABSave:(UIButton *)sender{
    if (self.ABScorecardSaveB) {
        self.ABScorecardSaveB(self);
    }
}
- (void)setABModel:(ABScorecardViewModel *)ABModel{
    _ABModel = ABModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)ABSaveButton{
    if (!_ABSaveButton) {
        _ABSaveButton = [[UIButton alloc] init];
        [_ABSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_ABSaveButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        _ABSaveButton.backgroundColor = [UIColor systemBlueColor];
        _ABSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        _ABSaveButton.layer.cornerRadius = 8.0f;
        _ABSaveButton.layer.masksToBounds = YES;
        _ABSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ABSaveButton addTarget:self action:@selector(ABSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABSaveButton;
}
@end
