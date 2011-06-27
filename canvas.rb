# -*- coding: utf-8 -*-
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
    
    @context.set_source_rgb(1, 1, 1) # 白
    @context.rectangle(0, 0, width, height)
    @context.fill
    
    @context.set_source_rgb(0,0,0)
  end

  def self.create(file)
    this = self.new
    
    yield(this)
    
    this.surface.write_to_png(file)
  end

  def line(x1,y1,x2,y2)
    context.move_to(x1,y1)
    context.line_to(x2,y2)
    context.stroke
  end

  def square(x,y,size)
    context.rectangle(x,y,size,size)
    context.stroke
  end

  def circle(x,y,r)
    context.arc(x, y, r, 0, 2 * Math::PI)
    context.stroke
  end
end

# Canvas.create("hello.png") do |g|
#   g.line(0,0,200,300)
#   g.square(200,300,30)
# end
