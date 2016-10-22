define :myarp do |sc, t|
  i = 0
  2.times do
    with_octave i do
      4.times do
        n = chord(sc, :minor)
        3.times do |i|
          play n[i]
          sleep t
        end
      end
    end
    i = i + 1
  end
end


live_loop :start do
  myarp :c4, 0.23
end
