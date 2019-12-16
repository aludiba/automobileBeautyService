//
//  CFScoringSaveTableViewCell.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CFScoringSaveTableViewCell.h"
#import "CFScorecardViewModel.h"

@interface CFScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *CFSaveButton;//保存按钮
@end
@implementation CFScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CFSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)CFSetContentView{
    [self.contentView addSubview:self.CFSaveButton];
    
    [self.CFSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(120);
        make.top.equalTo(self.contentView).offset(20);
        make.trailing.equalTo(self.contentView).offset(-120);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-20);
    }];
}
- (void)CFSave:(UIButton *)sender{
    if (self.CFScorecardSaveB) {
        self.CFScorecardSaveB(self);
    }
}
- (void)setCFModel:(CFScorecardViewModel *)CFModel{
    _CFModel = CFModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)CFSaveButton{
    if (!_CFSaveButton) {
        _CFSaveButton = [[UIButton alloc] init];
        [_CFSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_CFSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _CFSaveButton.backgroundColor = [UIColor systemBlueColor];
        _CFSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _CFSaveButton.layer.cornerRadius = 8.0f;
        _CFSaveButton.layer.masksToBounds = YES;
        _CFSaveButton.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _CFSaveButton.layer.borderWidth = 2.0f;
        _CFSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_CFSaveButton addTarget:self action:@selector(CFSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFSaveButton;
}
@end
