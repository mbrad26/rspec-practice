require 'movie'

 describe Movie do
    let(:stuntman) { double('Mr. Danger', ready?: true, act: 'Any string', fall_of_ladder: 'Sure', light_on_fire: true) }
    subject {described_class.new(stuntman)}

    describe '#start_shooting method' do
        it 'expects an actor to do 3 actions' do
            # allow(stuntman).to receive_messages(ready?: true, act: 'Any string', fall_of_ladder: 'Sure', light_on_fire: true)
            expect(stuntman).to receive(:ready?)
            expect(stuntman).to receive(:act)
            expect(stuntman).to receive(:fall_of_ladder)
            expect(stuntman).to receive(:light_on_fire)
            subject.start_shooting
        end
    end
end
