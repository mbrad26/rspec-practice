require 'student'

describe Student do
  
  subject { Student.new('Bob', 'Maker') }
  
  it 'responds to #first_name' do
    expect(subject.first_name).to eq 'Bob'
  end
  
  it 'responds to #last_name' do
    expect(subject.last_name).to eq 'Maker'
  end

  it 'responds to #student_fullname' do
    expect(subject.student_fullname).to eq 'Bob Maker'
  end
end