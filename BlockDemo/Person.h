//
//  Person.h
//  BlockDemo
//
//  Created by 新闻 on 2017/11/26.
//  Copyright © 2017年 新闻. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

// ARC:strong 非ARC:copy
@property (nonatomic, strong) void(^myBlock)(void);

- (void)eat:(void(^)(NSString *someThing))block;

- (void(^)(int m))run;

@end
