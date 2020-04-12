require 'student'

describe Student do
  describe 'instance methods' do
    subject { described_class.new('Bob', 'Maker') }

    it 'responds to #first_name' do
      expect(subject).to respond_to(:first_name)
      # expect(subject.first_name).to eq 'Bob'
    end

    it 'responds to #last_name' do
      expect(subject).to respond_to(:last_name)
      # expect(subject.last_name).to eq 'Maker'
    end

    it 'responds to #student_fullname' do
      expect(subject).to respond_to(:student_fullname)
      # expect(subject.student_fullname).to eq 'Bob Maker'
    end
  end
end
