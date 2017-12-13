//
//  DrawingView.swift
//  ParkerBrailow_CSP
//
//  Created by Brailow, Parker on 12/5/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect)
    {
        // Drawing code
        drawStickFigure().stroke()
        drawTurtle()
        drawHappyTree()
        drawStickyFigure().stroke()
        drawStickyyFigure().stroke()
        drawHeart()
    }
    public func drawStickyFigure() -> UIBezierPath
    {
        let stickyFigure = UIBezierPath()
        
        UIColor.blue.setStroke()
        stickyFigure.lineWidth = 3.0
        
        stickyFigure.addArc(withCenter: CGPoint(x: 280, y: 180),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle:CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickyFigure.move(to: CGPoint(x: 280, y: 200))
        stickyFigure.addLine(to: CGPoint(x: 280, y:270))
        stickyFigure.move(to: CGPoint(x: 260, y: 240))
        stickyFigure.addLine(to: CGPoint(x: 300, y: 240))
        stickyFigure.move(to: CGPoint(x: 280, y: 270))
        stickyFigure.addLine(to: CGPoint(x: 260, y: 300))
        stickyFigure.move(to: CGPoint(x: 280, y: 270))
        stickyFigure.addLine(to: CGPoint(x: 300, y: 300))
        return stickyFigure
    }
    public func drawStickyyFigure() -> UIBezierPath
    {
        let stickyyFigure = UIBezierPath()
        
        UIColor.red.setStroke()
        stickyyFigure.lineWidth = 3.0
        stickyyFigure.addArc(withCenter: CGPoint(x: 240, y: 180),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle:CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickyyFigure.move(to: CGPoint(x: 240, y: 200))
        stickyyFigure.addLine(to: CGPoint(x: 240, y:270))
        stickyyFigure.move(to: CGPoint(x: 220, y: 240))
        stickyyFigure.addLine(to: CGPoint(x: 260, y: 240))
        stickyyFigure.move(to: CGPoint(x: 240, y: 270))
        stickyyFigure.addLine(to: CGPoint(x: 220, y: 300))
        stickyyFigure.move(to: CGPoint(x: 240, y: 270))
        stickyyFigure.addLine(to: CGPoint(x: 260, y: 300))
        return stickyyFigure
    }
    public func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.green.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 180),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle:CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y: 200))
        stickFigure.addLine(to: CGPoint(x: 200, y:270))
        stickFigure.move(to: CGPoint(x: 180, y: 240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        return stickFigure
    }
    public func drawHeart() -> Void
    {
        let heart = UIBezierPath()
        
        heart.move(to: CGPoint(x: 240, y: 0))
        heart.addLine(to: CGPoint(x: 300, y: 150))
        heart.addLine(to: CGPoint(x: 180, y: 150))
        heart.close()
        UIColor(patternImage: UIImage(named: "chanukahHeart")!).setFill()
        UIColor.yellow.setStroke()
        heart.lineWidth = 2.0
        heart.fill()
        heart.stroke()
    }
    public func drawHappyTree() -> Void
    {
        let dance = UIBezierPath()
        
        dance.move(to: CGPoint(x: 80, y: 50))
        dance.addLine(to: CGPoint(x: 120, y: 150))
        dance.addLine(to: CGPoint(x: 40, y: 150))
        dance.close()
        UIColor(patternImage: UIImage(named: "binary")!).setFill()
        UIColor.red.setStroke()
        dance.lineWidth = 2.0
        dance.fill()
        dance.stroke()
        
        let happyTree = UIBezierPath()
        
        UIColor.green.setFill()
        happyTree.move(to: CGPoint(x: 110, y: 150))
        happyTree.addLine(to: CGPoint(x: 150, y: 200))
        happyTree.addLine(to: CGPoint(x: 10, y: 200))
        happyTree.addLine(to: CGPoint(x: 50, y: 150))
        happyTree.close()
        happyTree.stroke()
        happyTree.fill()
        happyTree.move(to: CGPoint(x: 80, y: 200))
        happyTree.addLine(to: CGPoint(x: 80, y: 250))
        happyTree.lineWidth = 6.0
        happyTree.stroke()
    }
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
}
