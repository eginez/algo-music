synth_cyc="#{File.expand_path "~"}/Documents/synth_cycles"
load_sample synth_cyc

live_loop :s1 do
  sample synth_cyc, "Breaking", amp: 3
  with_fx :reverb do
      #sample synth_cyc, "Resonance", beat_stretch: 8
      sample synth_cyc, "Cuchillo", amp: 0.5
  end
    sleep 8
end


live_loop :bass  do
  tick
  pattern = ring 1,0,0,0,1,0,1,1
  sample :bd_haus, amp: 4 if pattern.look == 1
  sleep 0.25
end
