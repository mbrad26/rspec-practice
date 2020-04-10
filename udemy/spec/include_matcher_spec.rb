RSpec.describe 'include matcher' do
    describe 'hot chocolate' do
        it 'checks for substring inclusion' do
            expect(subject).to include('hot')
            expect(subject).to include('choc')
        end

        it { is_expected.to include('late') }
    end

    describe [1, 2, 3] do
        it 'checks for inclusion in array, regardles of order' do
            expect(subject).to include(2, 3)
        end
    end
end