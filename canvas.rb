# -*- coding: emacs-mule -*-
require 'cairo'

class Canvas
  attr_reader :context
  attr_reader :surface
  
  def initialize
    format = Cairo::FORMAT_ARGB32
    width = 800
    height = 600
    
    @surface = Cairo::ImageSurface.new(format, width, height)
    @context = Cairo::Context.new(surface)
    
    @context.set_source_rgb(1, 1, 1) # ’Çò
    @context.rectangle(0, 0, width, height)
    @context.fill
    
    @context.set_source_rgb(0,0,0)
  end

  def self.create(file)
    this = self.new
    
    yield(this)
    
    this.surface.write_to_png(file)
  end

  def line(x1,y1,x2,y2,options = {})
    options[:stroke] = [0,0,0,1] unless options[:stroke]
    
    context.move_to(x1,y1)
    context.line_to(x2,y2)
    
    context.set_source_rgba(*options[:stroke])
    context.stroke
  end

  def square(x,y,size, options = {})
    options[:stroke] = [0,0,0,1] unless options[:stroke]
    options[:fill] = [0,0,0,0] unless options[:fill]
    
    context.set_source_rgba(*options[:stroke])
    context.rectangle(x,y,size,size)
    context.stroke
    
    context.set_source_rgba(*options[:fill])
    context.rectangle(x,y,size,size)
    context.fill
  end

  def circle(x,y,r, options = {})
    options[:stroke] = [0,0,0,1] unless options[:stroke]
    options[:fill] = [0,0,0,0] unless options[:fill]
    
    context.set_source_rgba(*options[:stroke])
    context.arc(x, y, r, 0, 2 * Math::PI)
    context.stroke

    context.set_source_rgba(*options[:fill])
    context.arc(x, y, r, 0, 2 * Math::PI)
    context.fill
  end
end

Canvas.create("hello.png") do |g|
  g.line(0,0,200,300, :stroke => [0,1,0,1])
  g.square(200,300,30, :stroke => [0,1,1,1], :fill => [1,0,0,0.5])
  g.circle(100,100,100, :fill => [0,0,1,0.3])
end
