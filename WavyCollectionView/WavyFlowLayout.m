//
//  WavyFlowLayout.m
//  WavyCollectionView
//
//  Created by Jaewon Kim on 2017-08-10.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

-(void)prepareLayout {
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc]init];
    
    for (UICollectionViewLayoutAttributes *superAttribute in superAttrs) {
    
        UICollectionViewLayoutAttributes *attribute = superAttribute.copy;
        [newAttrs addObject:attribute];
        
        attribute.center = CGPointMake(attribute.center.x, arc4random_uniform(self.collectionView.frame.size.height));
        
//        attribute.frame = CGRectMake(attribute.frame.origin.x, arc4random_uniform(self.collectionView.bounds.size.height),attribute.frame.size.width ,attribute.frame.size.height);

    
    }
    
    return newAttrs;
    
}



@end
