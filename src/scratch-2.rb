synth_cyc="#{File.expand_path "~"}/Documents/samples/synth_cycles"
cyc_patt="#{File.expand_path "~"}/Documents/samples/CyclicPatterns_Mini_Sp"

load_sample synth_cyc
load_sample cyc_patt

live_loop :ack do
  tick
  change  = (ring)+ [0]*23 +[5]*10+[7]*7
  with_fx :reverb, reps: 32, room: 1 do
    synth :tb303, cutoff: rrand(70, 120), note: (ring :e1, :e2, :e3).look + 12 - change.look ,  release: 0.1 , amp: 0.01
  end
  sleep 0.5
end


live_loop :drums, sync: :ack do
  tick
  pattern = (ring 1,0,0,0,0,0,1,0,1,1)
  p2 = (ring 0, 1,0,1,0,0,0,0,1,0)
  sample :bd_haus, amp: 1 if pattern.look == 1
  sample :elec_soft_kick, amp:2 if p2.look == 1
  sleep 0.5
end
