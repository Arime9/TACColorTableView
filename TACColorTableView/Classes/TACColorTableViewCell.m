//
//  TACColorTableViewCell.m
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import "TACColorTableViewCell.h"
#import "TACColorData.h"

@implementation TACColorTableViewCell

+ (UINib *)nib {
    NSString *nibName = NSStringFromClass([self class]);
    return [UINib nibWithNibName:nibName bundle:nil];
}

+ (NSString *)reuseIdentifier {
    return NSStringFromClass([self class]);
}

- (void)awaker {
    CGRect selfFrame = self.frame;
    self.transform = CGAffineTransformMakeRotation(M_PI / 2);
    self.frame = selfFrame;
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    // subContentView
    _subContentView.layer.cornerRadius = _subContentView.frame.size.width / 2;
    _subContentView.layer.masksToBounds = YES;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self awaker];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    if (selected) {
        self.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        self.accessoryType = UITableViewCellAccessoryNone;
    }
}

- (void)setData:(TACColorData *)data {
    _data = data;
    _subContentView.backgroundColor = data.color;
}

@end
