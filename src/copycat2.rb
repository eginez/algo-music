
live_loop :one do
  with_fx :bitcrusher do
    with_fx :slicer, phase: 0.35 do
      with_fx :reverb, room: 1 do
         s = synth :tb303, release: 8, note: :F3
        at 1 do
          n = [:D3, :F3, :A3].choose
          16.times do
            control s, note: (octs n, 3).tick
            sleep 0.25
          end
        end
      end
    end
  end
  sleep 8
end


live_loop :beats do
  with_fx :bitcrusher do
    sample  :bd_haus
    sleep 0.5
  end
end

live_loop :nn do
  with_fx :rever  do
    sample :elec_cymbal
  end
  sleep 1
end


#create high tone sound pp
