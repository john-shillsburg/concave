class SolarSystem
  require 'ruby2d'

  set title: "heliocentric model"
  set background: 'black'
  width = get :width
  height = get :height
  xc = width/2
  yc = height/2

  def draw_helio_orbits
    #biggest circle on bottom then stack them

    for i in 0..5
      Circle.new ({ 
        x: xc,
        y: yc,
        radius: 200 - 30 * i,
        sectors: 32,
        z: 10,
        color: "black"
      })

      Circle.new ({
        x: xc,
        y: yc,
        radius: 199 - 30 * i,
        sectors: 32,
        z: 10,
        color: "white"
      })

      Circle.new ({
        x: xc,
        y: yc,
        radius: 198 - 30 * i,
        sectors: 32,
        z: 10,
        color: "black"
      })
    end
  end

  def draw_planets
  end

  def draw_sun
    Circle.new ({
      x: xc,
      y: yc,
      radius: 20,
      sectors: 32,
      z: 10,
      color: "yellow"
    })
  end

  tick = 0

  update do
    if tick % 60 == 0
      #do orbits 
    end
    tick += 1

    draw_helio_orbits
    draw_sun
  end


  show
end
