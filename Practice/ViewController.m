//
//  ViewController.m
//  Practice
//
//  Created by Akila Sivapathasekaran on 2/18/16.
//  Copyright © 2016 Akila Sivapathasekaran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int plusminusArray[6] = {-4,3,-9,0,4,1};
    [self plusMinuscount:6 andArray:plusminusArray];
}

- (void) binaryGap{
 
    NSString *reminder = @"";
    int r,diff=0;
    
    for (int n = 1041; n >1 ; ) {
        
        if (n/2 >= 1) {
            
            r = n%2;
            n = n/2;
            
            if (n==1) {
                reminder = [NSString stringWithFormat:@"1%d%@",r,reminder];
            }else
                reminder = [NSString stringWithFormat:@"%d%@",r,reminder];
            
            NSLog(@"Greater than 1 : n = %d, reminder = %@",n,reminder);
        }else {
            
            r = n%2;
            reminder = [NSString stringWithFormat:@"%d%@",r,reminder];
            NSLog(@"Less than 1 : n = %d, reminder = %@",n,reminder);
        }
    }
    
    if ([reminder containsString:@"0"]) {
        
        for (int i = 0; i < reminder.length; i++) {
            
            if ([[reminder substringWithRange:NSMakeRange(i, 1)] isEqualToString:@"1"]) {
                NSLog(@"Index : %d",i);
                if (!diff)
                    diff = i;
                else if(diff <=i-diff){
                    
                    diff = i-diff;
                }
            }
        }
        NSLog(@"Longest Binary gap : %d",diff-1);
    }else
        NSLog(@"Longest Binary gap : %d",diff);
    

}

- (void) moveArray:(NSMutableArray *)source byTimes:(int)kTimes {
    
    NSMutableArray *newArray = [NSMutableArray array];
    for (int i =0; i<source.count ; i--) {
        
        [source objectAtIndex:i];
        
        
        //1,2,3,4,5
    }
}

- (NSUInteger) splitArray:(int) x withArray:(NSArray *)givenArray andCount:(int) count {
    
    for (int i = 0; i< givenArray.count; i++) {
        
        NSMutableArray *array1 = [NSMutableArray array];
        NSMutableArray *array2 = [NSMutableArray array];
        
        for (int j = 0; j <= i; j++) {
            
            [array1 addObject:[givenArray objectAtIndex:j]];
        }
        
        for (int j = i+1; j < givenArray.count; j++) {
            
            [array2 addObject:[givenArray objectAtIndex:j]];
        }
        
        int countEqual = 0,countUnEqual = 0;
        for (int i = 0; i < array1.count; i++) {
            if ([[array1 objectAtIndex:i]  isEqual:[NSNumber numberWithInt:x]]) {
                countEqual ++;
            }
        }
        
        for (int i = 0; i < array2.count; i++) {
            if (![[array2 objectAtIndex:i]  isEqual: [NSNumber numberWithInt:x]]) {
                countUnEqual ++;
            }
        }
        
        if (countEqual == countUnEqual) {
            NSLog(@"Array 1 : %@",array1);
            NSLog(@"Array 2 : %@",array2);
            return array1.count;
        }
    }
    return 0;
}

- (void) staircase:(int)n{
    
    NSString  *s =@"";
    for(int i =1;i<=n;i++){
        
        s = @"";
        for(int j =0;j<n-i;j++){
            s  = [NSString stringWithFormat:@"%@ ",s];
        }
        for (int k = 0; k<i; k++) {
            s  = [NSString stringWithFormat:@"%@#",s];
        }
        NSLog(@"%@",s);
    }
}

- (void) plusMinuscount:(int)n andArray:(int[])array {
    
    double negativeCount = 0, positiveCount = 0, zeroCount = 0;

    for (int i = 0; i < n; i++) {
        int nu = array[i];
        
        if (nu > 0)
            positiveCount++;
        else if (nu < 0)
            negativeCount++;
        else
            zeroCount++;
    }
    NSLog(@"-VE = %f",negativeCount/n);
    NSLog(@"+VE = %f",positiveCount/n);
    NSLog(@"0 = %f",zeroCount/n);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
