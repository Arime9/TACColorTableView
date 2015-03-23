//
//  TACColorData.h
//  TACColorTableView
//
//  Created by masato_arai on 2015/03/20.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIColor;

@interface TACColorData : NSObject

@property (nonatomic, strong, readonly) UIColor *color;
@property (nonatomic, assign, readonly) NSInteger colorIndex;

+ (instancetype)dataWithColor:(UIColor *)color colorIndex:(NSInteger)colorIndex;
- (instancetype)initWithColor:(UIColor *)color colorIndex:(NSInteger)colorIndex;

@end
