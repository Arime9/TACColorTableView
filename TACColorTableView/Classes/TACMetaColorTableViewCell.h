//
//  TACMetaColorTableViewCell.h
//  TACColorTableView
//
//  Created by masato_arai on 2015/01/26.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TACColorTableView;

@interface TACMetaColorTableViewCell : UITableViewCell

@property (nonatomic, strong) TACColorTableView *colorTableView;

+ (CGRect)frame;
+ (NSString *)reuseIdentifier;

@end
