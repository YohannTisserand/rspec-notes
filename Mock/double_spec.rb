RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
   # stuntman = double("Mr. Danger", fall_of_ladder: 'Ouch', light_on_fire: true)
   # expect(stuntman.fall_of_ladder).to eq('Ouch')
   # expect(stuntman.light_on_fire).to eq(true)

   # stuntman = double("Mr. Danger")
   # allow(stuntman).to receive(:fall_of_ladder).and_return('Ouch')

   stuntman = double("Mr. Danger")
   allow(stuntman).to receive_messages(fall_of_ladder: 'Ouch', light_on_fire: true)
   expect(stuntman.fall_of_ladder).to eq('Ouch')
   expect(stuntman.light_on_fire).to eq(true) 
  end
end

RSpec.describe 'exercise mock' do
  it 'should return green errors' do
    db = double("database_connection", connect: true, disconnect: "Goodbye")
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq("Goodbye")
  end
end

RSpec.describe 'exercise' do
  it 'should returns nice things' do
    fs = double("File System")
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)
    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to be_falsy
  end
end