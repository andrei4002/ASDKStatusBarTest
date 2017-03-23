//
// Created by Andrei Stoicescu on 23/03/2017.
// Copyright (c) 2017 Andrei Stoicescu. All rights reserved.
//

#import "ASDKChildViewController.h"
#import "ASStackLayoutSpec.h"
#import "ASDimension.h"


@implementation ASDKChildViewController

- (instancetype)init {

    ASDisplayNode *topNode = [[ASDisplayNode alloc] init];
    topNode.backgroundColor = UIColor.redColor;

    ASDisplayNode *bottomNode = [[ASDisplayNode alloc] init];
    bottomNode.backgroundColor = UIColor.blueColor;

    ASDisplayNode *mainNode = [[ASDisplayNode alloc] init];
    mainNode.automaticallyManagesSubnodes = YES;
    mainNode.layoutSpecBlock = ^ASLayoutSpec *(__kindof ASDisplayNode *node, ASSizeRange constrainedSize) {
        topNode.style.height = ASDimensionMakeWithPoints(44);
        bottomNode.style.flexGrow = 1.0f;
        return [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical
                                                       spacing:0
                                                justifyContent:ASStackLayoutJustifyContentStart
                                                    alignItems:ASStackLayoutAlignItemsStretch
                                                      children:@[topNode, bottomNode]];
    };

    self = [super initWithNode:mainNode];
    return self;
}

@end