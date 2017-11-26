//
//  ViewController.m
//  BlockDemo
//
//  Created by 新闻 on 2017/11/26.
//  Copyright © 2017年 新闻. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic, strong)Person *p;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.p = [[Person alloc] init];
    
    // 1.block作为对象的属性
    [self methodOne];
    
    // 2.block作为方法的参数
    [self methodTwo];
    
    // 3.作为方法的返回值 案例：Masonary
    [self methodTree];
}

- (void)methodOne {
    void(^testBlock)(void) = ^() {
        NSLog(@"block作为对象的参数");
    };
    self.p.myBlock = testBlock;
}

- (void)methodTwo {
    [self.p eat:^(NSString *someThing) {
        NSLog(@"爱吃%@",someThing);
    }];
}

- (void)methodTree {
//    void(^block)(int m) =  self.p.run;
//    block(100);
    
//     [self.p run](100);
    
    self.p.run(100);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.p.myBlock();
}




@end
