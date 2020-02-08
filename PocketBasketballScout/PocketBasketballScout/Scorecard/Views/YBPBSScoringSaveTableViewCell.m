//
//  YBPBSScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "YBPBSScoringSaveTableViewCell.h"
#import "YBPBSScorecardViewModel.h"

@interface YBPBSScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *YBPBSSaveButton;//保存按钮
@end
@implementation YBPBSScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self YBPBSSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)YBPBSSetContentView{
    [self.contentView addSubview:self.YBPBSSaveButton];
    
    [self.YBPBSSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(120);
        make.top.equalTo(self.contentView).offset(20);
        make.trailing.equalTo(self.contentView).offset(-120);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
}
- (void)YBPBSSave:(UIButton *)sender{
    if (self.YBPBSScorecardSaveB) {
        self.YBPBSScorecardSaveB(self);
    }
}
- (void)setYBPBSModel:(YBPBSScorecardViewModel *)YBPBSModel{
    _YBPBSModel = YBPBSModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)YBPBSSaveButton{
    if (!_YBPBSSaveButton) {
        _YBPBSSaveButton = [[UIButton alloc] init];
        [_YBPBSSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_YBPBSSaveButton setTitleColor:[UIColor cyanColor] forState:UIControlStateNormal];
        _YBPBSSaveButton.backgroundColor = [UIColor systemPurpleColor];
        _YBPBSSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _YBPBSSaveButton.layer.cornerRadius = 8.0f;
        _YBPBSSaveButton.layer.masksToBounds = YES;
        _YBPBSSaveButton.layer.borderColor = [UIColor systemRedColor].CGColor;
        _YBPBSSaveButton.layer.borderWidth = 2.0f;
        _YBPBSSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_YBPBSSaveButton addTarget:self action:@selector(YBPBSSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSSaveButton;
}
@end
