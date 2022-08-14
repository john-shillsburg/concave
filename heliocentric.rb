require 'ruby2d'

set title: "Heliocentric Model"

set background: 'black'


def draw_orbit_lines
  @xc = get :width 
  @xc = @xc / 2
  @yc = get :height
  @yc = @yc / 2

  for i in 1..7
    Circle.new(
      x: @xc, y: @yc,
      radius: i * 20,
      sectors: 32,
      color: 'random',
      z: 10 - i
    )
  end

end

tick = 0

update do
  if tick % 60 == 0
    draw_orbit_lines
  end
  tick += 1
end

show
