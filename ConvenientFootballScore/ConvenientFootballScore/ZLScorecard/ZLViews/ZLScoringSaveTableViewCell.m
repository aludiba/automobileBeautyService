//
//  ZLScoringSaveTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ZLScoringSaveTableViewCell.h"
#import "ZLScorecardViewModel.h"

@interface ZLScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *ZLSaveButton;//保存按钮
@end
@implementation ZLScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ZLSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)ZLSetContentView{
    self.contentView.backgroundColor = [UIColor purpleColor];
    [self.contentView addSubview:self.ZLSaveButton];
    [self.ZLSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(60);
        make.top.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-60);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
}
- (void)ZLSave:(UIButton *)sender{
    if (self.ZLScorecardSaveB) {
        self.ZLScorecardSaveB(self);
    }
}
- (void)setZLModel:(ZLScorecardViewModel *)ZLModel{
    _ZLModel = ZLModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)ZLSaveButton{
    if (!_ZLSaveButton) {
        _ZLSaveButton = [[UIButton alloc] init];
        [_ZLSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_ZLSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _ZLSaveButton.backgroundColor = [UIColor systemGreenColor];
        _ZLSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:25];
        _ZLSaveButton.layer.cornerRadius = 8.0f;
        _ZLSaveButton.layer.masksToBounds = YES;
        _ZLSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_ZLSaveButton addTarget:self action:@selector(ZLSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLSaveButton;
}
@end
