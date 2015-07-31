//
//  ViewController.m
//  ButtonFun
//
//  Created by Anurag on 7/30/15.
//  Copyright (c) 2015 Anurag. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+RandomColor.h"

NSString *kCellID = @"cellID";          //UICollectionViewCell storyBoard id
#define kCellHieghtWidth 40

@implementation ViewController

#pragma mark CollectionView delegates

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return [self numberOfSquares];         //Random value to cover screens of all Apple devices
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell  = [collectionView dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    
    UIColor *nextBackgroundColor = [UIColor RandomColor]; //RandomColor Category added to UIColor to provide ramdom colors
    
    /*varifying current cell background is different from the next one*/
    while (nextBackgroundColor == cell.backgroundColor) {
        nextBackgroundColor = [UIColor RandomColor];
    }
    
    cell.backgroundColor = nextBackgroundColor;
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor RandomColor];
}

 //handling device rotation
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration: (NSTimeInterval)duration {
    
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    [self.collectionView.collectionViewLayout invalidateLayout];
    
}

#pragma mark Private Methods

-(NSInteger)numberOfSquares {
    
    CGFloat width = self.view.bounds.size.width;
    NSInteger columns = width / kCellHieghtWidth;
    CGFloat height = self.view.bounds.size.height;
    NSInteger rows = height / kCellHieghtWidth;
    
    return columns * rows;
}

@end
