PATH = "#{File.expand_path "~"}/repos/algo-music/src"
load "#{PATH}/utils.rb"

prg="#{File.expand_path "~"}/Documents/samples/ElectroSynthProgression"
chill="#{File.expand_path "~"}/Documents/samples/LiquidChill_Mini_SP"

load_samples prg
load_samples chill


live_loop :main do
  speed = 16
  mul = 1
  with_fx :wobble, phase: 3 do
    #sample chill, "GrooveFlute", beat_stretch: speed * mul, amp: 0.5
    with_fx :slicer, phase: 1 do
      with_fx :reverb, room: 1 do
        sample chill, "GrooveFlute", beat_stretch: speed * mul, amp: 0.15
      end
    end
  end
  sleep speed * mul
end


live_loop :b2, sync: :main do
  with_fx :echo, phase: 0.25 do
    sample :bd_haus, amp: 0.25
  end
  sleep 4
end

live_loop :b6, sync: :b3 do
  tick
  p0 = (ring 1, 0, 0, 1,1,1,0,0)
  p1 = (ring 0, 1, 1, 0)
  sample :drum_bass_hard if p0.look == 1
  sample :elec_snare if p1.look == 1
  sleep 1

end

live_loop :b3 do
  tick
  sample chill, "CompleteDrumLoop", amp: 2, beat_stretch: 16
  sleep 16

end
