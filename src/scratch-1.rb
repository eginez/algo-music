live_loop :one do
  tick
  with_fx :reverb, room: 1 do
    with_fx :slicer, phase: 0.3 do
      notes = (scale :f2, :minor_pentatonic, num_octaves: 2)
      synth :blade, note: notes.choose, release: 4, amp: 0.5
    end
  end
  sleep 4
end


live_loop :bass, sync: :one do
    with_fx :bitcrusher do
      sample :loop_compus, beat_stretch: 8, amp: 0.6
    end
  sleep 8
end

live_loop :loop_name  do
  sample :bd_haus, amp: 0.1
  sleep 2
end

live_loop :nn do
  notes2 = (chord :F2, :minor, num_octaves: 2, invert: [0, 1, 2].choose)
  #synth :beep, amp: 0.6, note: notes2.look, sustain: 4
  5.times do
    tick
    with_fx :krush, amp: 0.10  do
      with_fx :reverb, room: 1 do
        synth :beep, amp: 0.6, note: notes2.look, release: 0.5
      end
    sleep 0.5
    end
  end
end

live_loop :l1, sync: :loop_name do
  sample :elec_blup, beat_stretch: 4, amp: 0.5
  sleep 4
end
