//
//  Person.m
//  BlockDemo
//
//  Created by 新闻 on 2017/11/26.
//  Copyright © 2017年 新闻. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat:(void(^)(NSString * someThing))block {
    block(@"好吃的");
}

- (void(^)(int m))run {
    return ^(int m) {
        NSLog(@"run %d",m);
    };
}


@end
