define :my_s do |nt|
  with_fx :reverb do
    use_synth :beep
    play_pattern_timed nt, 1, sustain: 0.5
  end
end

define :score do
  p1 = [:f3, :af3, :f3, :bf3]
  p2 = [:f3, :af3, :f3, :c4]
  p3 = [:f3, :g3, :af3, :f3, :af3, :f3, :bf3]
  
  2.times do
    my_s p1
  end
  
  2.times do
    my_s p2
  end
  
  2.times do
      my_s p3
  end
end


live_loop :one do
  use_bpm_mul 1.2
  score
  sleep 0.25
end
