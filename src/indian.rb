$indian = "/Users/eginez/repos/algo-music/prefabs/indian-spirit.wav"

live_loop :init do
  sample $indian, amp: 0.1, beat_stretch: 12
  sleep 12
end

live_loop :beats2 do
    sample :loop_breakbeat, beat_stretch: 3, amp: 0.5,  hpf: 50
    sleep 3
end

all_notes = [:f3, :g3, :af3, :f3, :af3, :f3, :bf3]
live_loop :mel do
  n = all_notes.shuffle.take(2)
  play_pattern_timed n, 3, amp: 1, sustain: 1, attack: 0.5
end
