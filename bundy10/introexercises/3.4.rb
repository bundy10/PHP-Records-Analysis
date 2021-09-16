require 'rubygems'
require 'gosu'
require './circle'

# The screen has layers: Background, middle, top
module ZOrder
  BACKGROUND, MIDDLE, TOP = *0..2
end

class DemoWindow < Gosu::Window
  def initialize
    super(800, 600, false)
  end

  def draw
    Gosu.draw_rect(310, 300, 200, 150, Gosu::Color::RED, ZOrder::TOP, mode=:default)
    Gosu.draw_rect(385, 380, 50, 70, Gosu::Color::BLUE, ZOrder::TOP, mode=:default)
    Gosu.draw_rect(460, 335, 35, 35, Gosu::Color::BLUE, ZOrder::TOP, mode=:default)
    Gosu.draw_rect(0, 450, 1000, 400, Gosu::Color::GREEN, ZOrder::TOP, mode=:default)
    Gosu.draw_rect(100 , 350, 45, 120, 0xff_AC5B13 , ZOrder::TOP, mode=:default)
    Gosu.draw_triangle(405, 204, Gosu::Color::BLUE, 290, 300, Gosu::Color::BLUE, 530, 300,  Gosu::Color::BLUE, ZOrder::TOP, mode=:default)
    img2 = Gosu::Image.new(Circle.new(50))
    img2.draw(90, 250, ZOrder::TOP, 0.7, 1.2, Gosu::Color::GREEN)
    img2.draw(50, 290, ZOrder::TOP, 0.6, 1.0, Gosu::Color::GREEN)
    img2.draw(135, 290, ZOrder::TOP, 0.6, 1.0, Gosu::Color::GREEN)
    img2.draw(600, 50, ZOrder::TOP, 1, 1.0, Gosu::Color::YELLOW)
  end
end

DemoWindow.new.show
