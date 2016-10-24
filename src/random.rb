  live_loop :mel do
    with_fx :reverb, room: 1 do
      with_fx :slicer, phase: 0.125 do
        synth :tb303, note: :e1, release: 8, cutoff: 100, amp: 0.5, sustain: 0 do |s|
          64.times do
            control s, note: (chord :e1, :m, num_octaves: 2).tick
            sleep 0.125
          end
        end
      end
    end
    sleep 8
  end
