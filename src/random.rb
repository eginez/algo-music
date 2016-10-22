live_loop :mel do
  with_fx :reverb, room: 1 do
    with_fx :slicer, phase: 0.125 do
      synth :tb303, note: :f1, sustain: 8 , cutoff: 200, release: 0, amp: 0.1 do |s|
        control s, note (octs :f1, 3).tick
      end
    end
  end
  sleep 8
end


live_loop :bd do
  sample :bd_haus, cutoff: 80, amp: 1
  sleep 0.5
end
